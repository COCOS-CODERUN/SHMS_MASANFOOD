# Local patches

Base package: `mssql_connection 3.0.0`

- Android FreeTDS binaries are packaged from `android/app/src/main/jniLibs`
- DB-Lib error callback returns `INT_CANCEL` instead of `INT_EXIT`
- DB-Lib client charset is fixed to UTF-8 before opening a connection
- RPC and BCP text inputs use UTF-8 `SYBVARCHAR` so FreeTDS performs Unicode conversion
- RPC `datalen` uses the actual UTF-8 byte length
- Character and Unicode text results are decoded with the UTF-8 client charset
- Raw `CHAR`/`VARCHAR`/`TEXT` results remain unchanged after UTF-8 decoding
- An exported helper restores CP949 mojibake only when an application field explicitly opts in
- `NVARCHAR`/`NTEXT` and unrelated result fields bypass CP949 restoration
- Empty string input is restored before the parameterized statement executes
- Empty text and binary results remain empty instead of becoming `NULL`
- Parameter names are validated before building `sp_executesql` declarations
- Result collection no longer merges later schemas into the first schema
- An opt-in last-result mode supports `EXEC ...; SELECT output` batches
- Login timeout is also applied as the DB-Lib query timeout
- Implicit reconnect failure raises an error instead of continuing disconnected
- Application wrapper drops a failed session before the next request reconnects
- Any database selection failure closes and clears the session
- Android FreeTDS CMake excludes unavailable `gssapi_krb5`
- Android FreeTDS exports the `dbopen` symbol required by the Dart FFI binding
- Android build uses Ninja and flexible 16 KB page-size linker settings
- Android OpenSSL is disabled until ABI-specific TLS libraries are supplied

## Native binary status

The bundled FreeTDS `.so` files for `arm64-v8a`, `armeabi-v7a`, and `x86_64`
have `2**14` ELF LOAD alignment. All 35 DB-Lib symbols used by the Dart FFI
binding are present for every ABI.

The debug APK passes `zipalign -c -P 16 4`. The current 4 KB arm64 test device
installs and launches the APK, but runtime on an actual 16 KB device remains
unverified.

The bundled binaries were built without OpenSSL. Use only on the approved test
network until ABI-specific TLS libraries and the SQL Server encryption mode are
verified separately.

The Android build uses FreeTDS's internal iconv replacement. It does not support
CP949, so the application explicitly restores only Korean metal-detection fields
in Dart with `cp949_codec 1.0.2`.

Do not replace this folder with the pub.dev package without reapplying and testing these patches.
