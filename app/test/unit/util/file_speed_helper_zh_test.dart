import 'package:yidrop_app/gen/strings.g.dart';
import 'package:yidrop_app/util/i18n.dart';
import 'package:yidrop_app/util/notification_strings.dart';
import 'package:yidrop_isolates/util/file_speed_helper.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() async {
    await initI18n();
    LocaleSettings.setLocaleSync(AppLocale.zhCn);
  });

  const cases = [
    (Duration(minutes: 10, seconds: 54), '10:54'),
    (Duration(hours: 1), '1小时'),
    (Duration(hours: 1, minutes: 1), '1小时 1分钟'),
    (Duration(hours: 2, minutes: 2), '2小时 2分钟'),
    (Duration(hours: 1, minutes: 5), '1小时 5分钟'),
    (Duration(days: 1), '24小时'),
    (Duration(days: 1, hours: 2, minutes: 5), '26小时 5分钟'),
    (Duration(hours: 1, minutes: 5, seconds: 9), '1小时 5分钟'),
  ];

  for (final (duration, expected) in cases) {
    test('$duration → $expected', () {
      expect(
        getRemainingTime(
          bytesPerSeconds: 1000,
          remainingBytes: duration.inMilliseconds,
          strings: notificationStrings,
        ),
        expected,
      );
    });
  }
}
