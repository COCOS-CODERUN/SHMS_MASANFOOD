import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// 외부 라이선스 등록
void registerThirdPartyLicenses() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(
      'assets/licenses/FREETDS_LIBRARY_GPL_2.txt',
    );

    yield LicenseEntryWithLineBreaks(['FreeTDS 1.5.4'], license);
  });
}
