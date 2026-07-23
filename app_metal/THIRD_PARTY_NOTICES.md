# Third-Party Notices

## mssql_connection 3.0.0

- Copyright (c) 2023 Ankeshwarapu Hitesh
- License: MIT
- Source: https://github.com/Hiteshdon/mssql_connection
- Local license: `third_party/mssql_connection/LICENSE`
- Local changes: `third_party/mssql_connection/LOCAL_PATCHES.md`

## FreeTDS 1.5.4

The Android package includes `libsybdb.so` and `libct.so` for `arm64-v8a`,
`armeabi-v7a`, and `x86_64`.

- License: GNU Library General Public License, version 2 or later
- License text: `assets/licenses/FREETDS_LIBRARY_GPL_2.txt`
- Source archive: https://www.freetds.org/files/stable/freetds-1.5.4.tar.gz
- Rebuild script: `third_party/mssql_connection/scripts/build-android.sh`
- Android patch: `third_party/mssql_connection/patches/freetds-android.patch`

The APK distributor must also satisfy the source and relinking-material
requirements in section 6 of the GNU Library General Public License. A source
URL alone is not a substitute for the required materials or a valid written
offer.

## cp949_codec 1.0.2

- Copyright (c) 2021, Lety
- License: BSD 3-Clause
- Source: https://github.com/letyletylety/cp949_codec
- Purpose: Legacy CP949 `VARCHAR` result recovery

BSD 3-Clause License

Copyright (c) 2021, Lety
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
