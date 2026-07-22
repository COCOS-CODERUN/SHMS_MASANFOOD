#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ANDROID_NDK=<path> ./scripts/build-android.sh /abs/path/to/third_party/freetds-1.5.4 /abs/path/to/outdir "arm64-v8a armeabi-v7a x86_64"
#
# Produces:
#   $OUT_DIR/<ABI>/libsybdb.so

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATCH_FILE="$SCRIPT_DIR/../patches/freetds-android.patch"
SRC_DIR="$(cd "$1" && pwd)"
mkdir -p "$2"
OUT_DIR="$(cd "$2" && pwd)"
ABIS="${3:-arm64-v8a}"

: "${ANDROID_NDK:?ANDROID_NDK env var must be set}"

# Android network libraries
if patch --dry-run -d "$SRC_DIR" -p1 < "$PATCH_FILE" >/dev/null 2>&1; then
  patch -d "$SRC_DIR" -p1 < "$PATCH_FILE"
elif patch --dry-run -R -d "$SRC_DIR" -p1 < "$PATCH_FILE" >/dev/null 2>&1; then
  echo "FreeTDS Android patch already applied"
else
  echo "FreeTDS Android patch cannot be applied" >&2
  exit 1
fi

for ABI in $ABIS; do
  BUILD_DIR="$OUT_DIR/build-$ABI"

  case "$BUILD_DIR" in
    "$OUT_DIR"/build-*) ;;
    *) echo "Unsafe build directory: $BUILD_DIR" >&2; exit 1 ;;
  esac

  if [ -d "$BUILD_DIR" ]; then
    rm -rf -- "$BUILD_DIR"
  fi

  mkdir -p "$BUILD_DIR"

  cmake -S "$SRC_DIR" -B "$BUILD_DIR" -G Ninja \
    -DCMAKE_TOOLCHAIN_FILE="$ANDROID_NDK/build/cmake/android.toolchain.cmake" \
    -DANDROID_ABI="$ABI" \
    -DANDROID_PLATFORM=21 \
    -DANDROID_SUPPORT_FLEXIBLE_PAGE_SIZES=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_SHARED_LINKER_FLAGS="-Wl,-z,max-page-size=16384 -Wl,-z,common-page-size=16384" \
    -DENABLE_MSDBLIB=ON \
    -DWITH_OPENSSL=OFF

  # Work around Android lacking system iconv: force-disable HAVE_ICONV in generated config.h
  # so FreeTDS uses its internal replacements instead of system iconv.
  CONFIG_H="$BUILD_DIR/include/config.h"
  if [ -f "$CONFIG_H" ]; then
    # Replace a strict match to avoid unintended changes
    sed -i.bak -e 's/^#define HAVE_ICONV 1$/#undef HAVE_ICONV/' "$CONFIG_H" || true
  fi

  # Build only DB-Library and CT-Library
  cmake --build "$BUILD_DIR" --config Release --target sybdb ct --parallel

  # Copy Android libraries
  mkdir -p "$OUT_DIR/$ABI"
  cp -L "$BUILD_DIR/src/dblib/libsybdb.so" "$OUT_DIR/$ABI/libsybdb.so"
  cp -L "$BUILD_DIR/src/ctlib/libct.so" "$OUT_DIR/$ABI/libct.so"
done

echo "Built Android libs into: $OUT_DIR/<ABI>"
