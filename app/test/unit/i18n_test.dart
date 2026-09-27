import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:yidrop_app/gen/strings.g.dart';
import 'package:test/test.dart';

void main() {
  group('i18n', () {
    test('Should compile', () {
      // The following test will fail if the i18n file is either not compiled
      // or there are compile-time errors.
      expect(AppLocale.values, [AppLocale.zhCn]);
      expect(AppLocaleUtils.parse('en-US'), AppLocale.zhCn);
      expect(AppLocale.zhCn.translations.general.accept, '接受');
      expect(t.sendTab.sendModes.link, '应急发送');
      expect(t.webSharePage.title, '应急发送');
      expect(t.webReceivePage.title, '应急接收');
      expect(t.dialogs.sendModeHelp.receive, contains('上传'));
      expect(AppLocale.zhCn.translations.receiveHistoryPage.empty, '还没有历史记录哦');
      expect(AppLocale.zhCn.translations.receivePage.subTitle(n: 2), contains('2'));
      expect(AppLocale.zhCn.translations.aliasGenerator.fruits, contains('梨'));
    });

    test('All locales should be supported by Flutter', () {
      for (final locale in AppLocale.values) {
        expect(kMaterialSupportedLanguages, contains(locale.languageCode));
      }
    });
  });
}
