import 'package:yidrop_app/gen/strings.g.dart';

Future<void> initI18n() async {
  // YiDrop intentionally ships only Simplified Chinese. This also handles
  // device locales and persisted 2025 language preferences that no longer exist.
  await LocaleSettings.setLocale(AppLocale.zhCn);
  await LocaleSettings.setPluralResolver(
    locale: AppLocale.zhCn,
    cardinalResolver: (n, {zero, one, two, few, many, other}) {
      if (n == 0) return zero ?? other ?? n.toString();
      if (n == 1) return one ?? other ?? n.toString();
      return other ?? n.toString();
    },
    ordinalResolver: (n, {zero, one, two, few, many, other}) => other ?? n.toString(),
  );
}

extension AppLocaleExt on AppLocale {
  String getLocaleName() => '简体中文';
}
