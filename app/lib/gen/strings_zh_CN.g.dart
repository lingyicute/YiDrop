///
/// Generated translation cache, synchronized without an SDK during migration.
/// Canonical regeneration: cd app && dart run slang
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsZhCn = Translations; // ignore: unused_element

class Translations with BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.zhCn,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           );

  /// Metadata for the translations of <zh-CN>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

  // Translations

  String get appName => 'YiDrop';

  late final Translations$general$zh_CN general = Translations$general$zh_CN.internal(_root);
  late final Translations$receiveTab$zh_CN receiveTab = Translations$receiveTab$zh_CN.internal(_root);
  late final Translations$sendTab$zh_CN sendTab = Translations$sendTab$zh_CN.internal(_root);
  late final Translations$settingsTab$zh_CN settingsTab = Translations$settingsTab$zh_CN.internal(_root);
  late final Translations$troubleshootPage$zh_CN troubleshootPage = Translations$troubleshootPage$zh_CN.internal(_root);
  late final Translations$networkInterfacesPage$zh_CN networkInterfacesPage = Translations$networkInterfacesPage$zh_CN.internal(_root);
  late final Translations$receiveHistoryPage$zh_CN receiveHistoryPage = Translations$receiveHistoryPage$zh_CN.internal(_root);
  late final Translations$apkPickerPage$zh_CN apkPickerPage = Translations$apkPickerPage$zh_CN.internal(_root);
  late final Translations$selectedFilesPage$zh_CN selectedFilesPage = Translations$selectedFilesPage$zh_CN.internal(_root);
  late final Translations$deviceDetailsPage$zh_CN deviceDetailsPage = Translations$deviceDetailsPage$zh_CN.internal(_root);
  late final Translations$verifyPage$zh_CN verifyPage = Translations$verifyPage$zh_CN.internal(_root);
  late final Translations$receivePage$zh_CN receivePage = Translations$receivePage$zh_CN.internal(_root);
  late final Translations$receiveOptionsPage$zh_CN receiveOptionsPage = Translations$receiveOptionsPage$zh_CN.internal(_root);
  late final Translations$sendPage$zh_CN sendPage = Translations$sendPage$zh_CN.internal(_root);
  late final Translations$progressPage$zh_CN progressPage = Translations$progressPage$zh_CN.internal(_root);
  late final Translations$webSharePage$zh_CN webSharePage = Translations$webSharePage$zh_CN.internal(_root);
  late final Translations$webReceivePage$zh_CN webReceivePage = Translations$webReceivePage$zh_CN.internal(_root);
  late final Translations$aboutPage$zh_CN aboutPage = Translations$aboutPage$zh_CN.internal(_root);
  late final Translations$donationPage$zh_CN donationPage = Translations$donationPage$zh_CN.internal(_root);
  late final Translations$changelogPage$zh_CN changelogPage = Translations$changelogPage$zh_CN.internal(_root);
  late final Translations$whatsNewPage$zh_CN whatsNewPage = Translations$whatsNewPage$zh_CN.internal(_root);
  late final Translations$aliasGenerator$zh_CN aliasGenerator = Translations$aliasGenerator$zh_CN.internal(_root);
  late final Translations$dialogs$zh_CN dialogs = Translations$dialogs$zh_CN.internal(_root);
  late final Translations$sanitization$zh_CN sanitization = Translations$sanitization$zh_CN.internal(_root);
  late final Translations$tray$zh_CN tray = Translations$tray$zh_CN.internal(_root);
  late final Translations$web$zh_CN web = Translations$web$zh_CN.internal(_root);
  late final Translations$assetPicker$zh_CN assetPicker = Translations$assetPicker$zh_CN.internal(_root);
}

// Path: general
class Translations$general$zh_CN {
  Translations$general$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get accept => '接受';

  String get accepted => '已接受';

  String get add => '添加';

  String get advanced => '高级';

  String get cancel => '取消';

  String get close => '关闭';

  String get confirm => '确认';

  String get continueStr => '继续';

  String get copy => '复制';

  String get copiedToClipboard => '已复制到剪贴板';

  String get decline => '拒绝';

  String get done => '完成';

  String get delete => '删除';

  String get edit => '编辑';

  String get error => '错误';

  String get example => '示例';

  String get files => '文件';

  String get finished => '已完成';

  String get hide => '隐藏';

  String get off => '关';

  String get offline => '离线';

  String get on => '开';

  String get online => '在线';

  String get open => '打开';

  String get queue => '队列';

  String get quickSave => '自动保存';

  String get quickSaveFromFavorites => '自动保存来自“收藏夹(白名单)”设备的文件';

  String get renamed => '重命名成功';

  String get reset => '重置';

  String get restart => '重启';

  String get settings => '设置';

  String get skipped => '已跳过';

  String get start => '开始';

  String get stop => '停止';

  String get save => '保存';

  String get unchanged => '未更改';

  String get unknown => '未知';

  String get noItemInClipboard => '剪贴板为空';
}

// Path: receiveTab
class Translations$receiveTab$zh_CN {
  Translations$receiveTab$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '接收';

  late final Translations$receiveTab$infoBox$zh_CN infoBox = Translations$receiveTab$infoBox$zh_CN.internal(_root);
  late final Translations$receiveTab$quickSave$zh_CN quickSave = Translations$receiveTab$quickSave$zh_CN.internal(_root);

  String get link => '应急接收';
}

// Path: sendTab
class Translations$sendTab$zh_CN {
  Translations$sendTab$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '发送';

  late final Translations$sendTab$selection$zh_CN selection = Translations$sendTab$selection$zh_CN.internal(_root);
  late final Translations$sendTab$picker$zh_CN picker = Translations$sendTab$picker$zh_CN.internal(_root);

  String get shareIntentInfo => '你也可以通过移动设备中的“分享”功能更简单地发送文件。';

  String get nearbyDevices => '附近的设备';

  String get thisDevice => '这台设备';

  String get scan => '扫描设备';

  String get manualSending => '手动发送';

  String get sendMode => '发送模式';

  late final Translations$sendTab$sendModes$zh_CN sendModes = Translations$sendTab$sendModes$zh_CN.internal(_root);

  String get sendModeHelp => '提示';

  String get help => '请确保目标连接到同一个 Wi‑Fi 网络。';

  String get placeItems => '列出要分享的项目。';
}

// Path: settingsTab
class Translations$settingsTab$zh_CN {
  Translations$settingsTab$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '设置';

  late final Translations$settingsTab$general$zh_CN general = Translations$settingsTab$general$zh_CN.internal(_root);
  late final Translations$settingsTab$receive$zh_CN receive = Translations$settingsTab$receive$zh_CN.internal(_root);
  late final Translations$settingsTab$send$zh_CN send = Translations$settingsTab$send$zh_CN.internal(_root);
  late final Translations$settingsTab$network$zh_CN network = Translations$settingsTab$network$zh_CN.internal(_root);
  late final Translations$settingsTab$other$zh_CN other = Translations$settingsTab$other$zh_CN.internal(_root);

  String get advancedSettings => '高级设置';
}

// Path: troubleshootPage
class Translations$troubleshootPage$zh_CN {
  Translations$troubleshootPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '故障排除';

  String get subTitle => '应用没有按预期工作？你可以在这里找到常用解决方案。';

  String get solution => '解决方案：';

  String get fixButton => '自动修复';

  late final Translations$troubleshootPage$firewall$zh_CN firewall = Translations$troubleshootPage$firewall$zh_CN.internal(_root);
  late final Translations$troubleshootPage$noDiscovery$zh_CN noDiscovery = Translations$troubleshootPage$noDiscovery$zh_CN.internal(_root);
  late final Translations$troubleshootPage$noConnection$zh_CN noConnection = Translations$troubleshootPage$noConnection$zh_CN.internal(_root);
}

// Path: networkInterfacesPage
class Translations$networkInterfacesPage$zh_CN {
  Translations$networkInterfacesPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '网络接口';

  String get info =>
      '默认情况下，YiDrop 使用所有可用的网络接口。你可以在此处排除不需要的网络接口。你需要重新启动服务器以应用更改。';

  String get preview => '预览';

  String get whitelist => '白名单';

  String get blacklist => '黑名单';
}

// Path: receiveHistoryPage
class Translations$receiveHistoryPage$zh_CN {
  Translations$receiveHistoryPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '历史';

  String get openFolder => '打开文件保存目录';

  String get deleteHistory => '删除历史记录';

  String get empty => '还没有历史记录哦';

  late final Translations$receiveHistoryPage$zh_CNtryActions$zh_CN entryActions = Translations$receiveHistoryPage$zh_CNtryActions$zh_CN.internal(_root);
}

// Path: apkPickerPage
class Translations$apkPickerPage$zh_CN {
  Translations$apkPickerPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '应用（APK）';

  String get excludeSystemApps => '排除系统应用';

  String get excludeAppsWithoutLaunchIntent => '排除无法启动的应用';

  String apps({required Object n}) => '${n} 个应用';
}

// Path: selectedFilesPage
class Translations$selectedFilesPage$zh_CN {
  Translations$selectedFilesPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get deleteAll => '全部删除';
}

// Path: deviceDetailsPage
class Translations$deviceDetailsPage$zh_CN {
  Translations$deviceDetailsPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '设备详情';

  String get favorite => '收藏';

  String get verify => '验证';

  late final Translations$deviceDetailsPage$info$zh_CN info = Translations$deviceDetailsPage$info$zh_CN.internal(_root);
  late final Translations$deviceDetailsPage$logs$zh_CN logs = Translations$deviceDetailsPage$logs$zh_CN.internal(_root);
}

// Path: verifyPage
class Translations$verifyPage$zh_CN {
  Translations$verifyPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '验证';

  String get icons => '图标';

  String get text => '文本';

  String get question => '在另一台设备上显示的内容相同吗？';
}

// Path: receivePage
class Translations$receivePage$zh_CN {
  Translations$receivePage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String subTitle({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(
    n,
    one: '想要发送给你一个文件',
    other: '想要发送给你 ${n} 个文件',
  );

  String get subTitleMessage => '发送给你了一条消息：';

  String get subTitleLink => '发送给你了一个链接：';

  String get canceled => '发送者取消了请求。';
}

// Path: receiveOptionsPage
class Translations$receiveOptionsPage$zh_CN {
  Translations$receiveOptionsPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '设置';

  String get destination => _root.settingsTab.receive.destination;

  String get appDirectory => '(YiDrop 文件夹)';

  String get saveToGallery => _root.settingsTab.receive.saveToGallery;

  String get saveToGalleryOff => '由于分享内容中存在文件夹，已自动关闭。';
}

// Path: sendPage
class Translations$sendPage$zh_CN {
  Translations$sendPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String calculatingChecksum({required Object curr, required Object n}) => '正在计算校验和（${curr} / ${n}）';

  String get waiting => '等待响应中……';

  String get rejected => '对方拒绝了请求。';

  String get tooManyAttempts => _root.web.tooManyAttempts;

  String get busy => '对方正在处理另一个请求。';
}

// Path: progressPage
class Translations$progressPage$zh_CN {
  Translations$progressPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get titleSending => '正在发送文件';

  String get titleReceiving => '正在接收文件';

  String get savedToGallery => '已保存到相册';

  late final Translations$progressPage$total$zh_CN total = Translations$progressPage$total$zh_CN.internal(_root);
  late final Translations$progressPage$remainingTime$zh_CN remainingTime = Translations$progressPage$remainingTime$zh_CN.internal(_root);
}

// Path: webSharePage
class Translations$webSharePage$zh_CN {
  Translations$webSharePage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '应急发送';

  String get loading => '正在启动服务器……';

  String get stopping => '正在停止服务器……';

  String get error => '在启动服务器过程中发生了错误。';

  String openLink({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(
    n,
    one: '在浏览器中打开链接：',
    other: '在浏览器中打开其中一个链接：',
  );

  String get requests => '请求';

  String get noRequests => '尚无请求。';

  String get encryption => _root.settingsTab.network.encryption;

  String get autoAccept => '自动接受请求';

  String get requirePin => '启用 PIN 密码';

  String pinHint({required Object pin}) => 'PIN 为 “${pin}”';

  String get encryptionHint => 'YiDrop 使用自签名证书。你需要在浏览器中允许它。';

  String pendingRequests({required Object n}) => '待处理请求：${n}';
}

// Path: webReceivePage
class Translations$webReceivePage$zh_CN {
  Translations$webReceivePage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '应急接收';
}

// Path: aboutPage
class Translations$aboutPage$zh_CN {
  Translations$aboutPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '关于 YiDrop';

  List<String> get description => [
    'YiDrop 是一款基于 LocalSend 的免费开源应用，可以通过本地网络与附近设备便捷地分享文件和信息，无需广域网连接，安全又可靠。',
    '它带着跨平台的使命出发，保留 Android、iOS、macOS、Windows 和 Linux 的支持代码。发布的安装包可以在 YiDrop 的 GitHub 仓库找到哦。',
  ];

  String get author => '作者';

  String get contributors => '鸣谢：LocalSend 项目的贡献者';

  String get packagers => '打包者';

  String get translators => '翻译者';
}

// Path: donationPage
class Translations$donationPage$zh_CN {
  Translations$donationPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '捐赠';

  String get info => 'YiDrop 免费、开源、无广告。如果你喜欢这款应用程序，可以捐款支持开发。';

  String donate({required Object amount}) => '捐款 ${amount}';

  String get thanks => '非常感谢你的支持！';

  String get restore => '恢复购买';
}

// Path: changelogPage
class Translations$changelogPage$zh_CN {
  Translations$changelogPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '更新日志';
}

// Path: whatsNewPage
class Translations$whatsNewPage$zh_CN {
  Translations$whatsNewPage$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String title({required Object version}) => '${version} 中的新增功能';

  late final Translations$whatsNewPage$changes$zh_CN changes = Translations$whatsNewPage$changes$zh_CN.internal(_root);
}

// Path: aliasGenerator
class Translations$aliasGenerator$zh_CN {
  Translations$aliasGenerator$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  List<String> get adjectives => [
    '玲珑剔透',
    '甜美',
    '晶莹',
    '晶莹',
    '不染凡尘',
    '聪明',
    '幸运',
    '可爱',
    '鲜艳',
    '软糯',
    '活力满满',
    '多汁',
    '可爱',
    '水灵灵',
    '香喷喷',
    '新鲜',
    '闪亮',
    '玲珑剔透',
    '幸运',
    '可爱',
    '晶莹',
    '不染凡尘',
    '幸运',
    '可爱',
    '软糯',
    '可爱',
    '开心',
    '酥脆',
    '香脆',
    '闪亮',
    '幸运',
    '聪明',
    '可爱',
    '清甜',
    '脆嫩',
    '酸涩',
    '饱满',
    '清甜',
  ];
  List<String> get fruits => [
    '苹果',
    '梨',
    '香蕉',
    '花',
    '蓝莓',
    '桃子',
    '青梅',
    '樱桃',
    '椰子',
    '葡萄',
    '柠檬',
    '橘子',
    '芒果',
    '甜瓜',
    '小蘑菇',
    '梨',
    '橙子',
    '木瓜',
    '桃子',
    '幸运草',
    '菠萝',
    '小土豆',
    '柠檬',
    '柠檬',
    '草莓',
    '番茄',
  ];

  /// In some languages, the adjective must be last.
  ///
  String combination({required Object adjective, required Object fruit}) => '${adjective}的${fruit}';
}

// Path: dialogs
class Translations$dialogs$zh_CN {
  Translations$dialogs$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final Translations$dialogs$addFile$zh_CN addFile = Translations$dialogs$addFile$zh_CN.internal(_root);
  late final Translations$dialogs$openFile$zh_CN openFile = Translations$dialogs$openFile$zh_CN.internal(_root);
  late final Translations$dialogs$addressInput$zh_CN addressInput = Translations$dialogs$addressInput$zh_CN.internal(_root);
  late final Translations$dialogs$cancelSession$zh_CN cancelSession = Translations$dialogs$cancelSession$zh_CN.internal(_root);
  late final Translations$dialogs$cannotOpenFile$zh_CN cannotOpenFile = Translations$dialogs$cannotOpenFile$zh_CN.internal(_root);
  late final Translations$dialogs$zh_CNcryptionDisabledNotice$zh_CN encryptionDisabledNotice = Translations$dialogs$zh_CNcryptionDisabledNotice$zh_CN.internal(
    _root,
  );
  late final Translations$dialogs$errorDialog$zh_CN errorDialog = Translations$dialogs$errorDialog$zh_CN.internal(_root);
  late final Translations$dialogs$favoriteDialog$zh_CN favoriteDialog = Translations$dialogs$favoriteDialog$zh_CN.internal(_root);
  late final Translations$dialogs$favoriteDeleteDialog$zh_CN favoriteDeleteDialog = Translations$dialogs$favoriteDeleteDialog$zh_CN.internal(_root);
  late final Translations$dialogs$favoriteEditDialog$zh_CN favoriteEditDialog = Translations$dialogs$favoriteEditDialog$zh_CN.internal(_root);
  late final Translations$dialogs$fileInfo$zh_CN fileInfo = Translations$dialogs$fileInfo$zh_CN.internal(_root);
  late final Translations$dialogs$fileNameInput$zh_CN fileNameInput = Translations$dialogs$fileNameInput$zh_CN.internal(_root);
  late final Translations$dialogs$historyClearDialog$zh_CN historyClearDialog = Translations$dialogs$historyClearDialog$zh_CN.internal(_root);
  late final Translations$dialogs$localNetworkUnauthorized$zh_CN localNetworkUnauthorized = Translations$dialogs$localNetworkUnauthorized$zh_CN.internal(
    _root,
  );
  late final Translations$dialogs$messageInput$zh_CN messageInput = Translations$dialogs$messageInput$zh_CN.internal(_root);
  late final Translations$dialogs$noFiles$zh_CN noFiles = Translations$dialogs$noFiles$zh_CN.internal(_root);
  late final Translations$dialogs$noPermission$zh_CN noPermission = Translations$dialogs$noPermission$zh_CN.internal(_root);
  late final Translations$dialogs$notAvailableOnPlatform$zh_CN notAvailableOnPlatform = Translations$dialogs$notAvailableOnPlatform$zh_CN.internal(_root);
  late final Translations$dialogs$qr$zh_CN qr = Translations$dialogs$qr$zh_CN.internal(_root);
  late final Translations$dialogs$quickActions$zh_CN quickActions = Translations$dialogs$quickActions$zh_CN.internal(_root);
  late final Translations$dialogs$quickSaveNotice$zh_CN quickSaveNotice = Translations$dialogs$quickSaveNotice$zh_CN.internal(_root);
  late final Translations$dialogs$quickSaveFromFavoritesNotice$zh_CN quickSaveFromFavoritesNotice =
      Translations$dialogs$quickSaveFromFavoritesNotice$zh_CN.internal(_root);
  late final Translations$dialogs$pin$zh_CN pin = Translations$dialogs$pin$zh_CN.internal(_root);
  late final Translations$dialogs$sendModeHelp$zh_CN sendModeHelp = Translations$dialogs$sendModeHelp$zh_CN.internal(_root);
  late final Translations$dialogs$zoom$zh_CN zoom = Translations$dialogs$zoom$zh_CN.internal(_root);
}

// Path: sanitization
class Translations$sanitization$zh_CN {
  Translations$sanitization$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get empty => '文件名不能为空';

  String get invalid => '文件名包含无效字符';
}

// Path: tray
class Translations$tray$zh_CN {
  Translations$tray$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get open => _root.general.open;

  String get close => '退出 YiDrop';

  String get closeWindows => '退出';
}

// Path: web
class Translations$web$zh_CN {
  Translations$web$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get waiting => _root.sendPage.waiting;

  String get enterPin => '输入 PIN';

  String get invalidPin => 'PIN 无效';

  String get tooManyAttempts => '尝试次数过多';

  String get rejected => '已拒绝';

  String get files => '文件';

  String get fileName => '文件名';

  String get size => '大小';
}

// Path: assetPicker
class Translations$assetPicker$zh_CN {
  Translations$assetPicker$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get confirm => '确认';

  String get cancel => '取消';

  String get edit => '编辑';

  String get gifIndicator => 'GIF';

  String get loadFailed => '加载失败';

  String get original => '原文件';

  String get preview => '预览';

  String get select => '选择';

  String get emptyList => '清空列表';

  String get unSupportedAssetType => '不支持该文件格式';

  String get unableToAccessAll => '无法访问设备上的所有文件';

  String get viewingLimitedAssetsTip => '应用程序仅能查看你允许的文件和相册。';

  String get changeAccessibleLimitedAssets => '点击以更改可访问文件范围';

  String get accessAllTip =>
      '应用程序只能访问设备上的部分文件，请转到系统设置并允许该应用访问设备上的所有媒体文件。';

  String get goToSystemSettings => '转到系统设置';

  String get accessLimitedAssets => '继续受限访问';

  String get accessiblePathName => '可访问的文件';

  String get sTypeAudioLabel => '音频';

  String get sTypeImageLabel => '图片';

  String get sTypeVideoLabel => '视频';

  String get sTypeOtherLabel => '其他媒体文件';

  String get sActionPlayHint => '播放';

  String get sActionPreviewHint => '预览';

  String get sActionSelectHint => '选择';

  String get sActionSwitchPathLabel => '更改路径';

  String get sActionUseCameraHint => '使用摄像头';

  String get sNameDurationLabel => '时长';

  String get sUnitAssetCountLabel => '计数';
}

// Path: receiveTab.infoBox
class Translations$receiveTab$infoBox$zh_CN {
  Translations$receiveTab$infoBox$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get ip => 'IP：';

  String get port => '端口：';

  String get alias => '设备名称：';
}

// Path: receiveTab.quickSave
class Translations$receiveTab$quickSave$zh_CN {
  Translations$receiveTab$quickSave$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get off => _root.general.off;

  String get favorites => '收藏夹';

  String get on => _root.general.on;
}

// Path: sendTab.selection
class Translations$sendTab$selection$zh_CN {
  Translations$sendTab$selection$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '已选项目';

  String files({required Object files}) => '文件：${files}';

  String size({required Object size}) => '大小：${size}';
}

// Path: sendTab.picker
class Translations$sendTab$picker$zh_CN {
  Translations$sendTab$picker$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get file => '文件';

  String get folder => '文件夹';

  String get media => '媒体';

  String get text => '文本';

  String get app => '应用';

  String get clipboard => '剪贴板';
}

// Path: sendTab.sendModes
class Translations$sendTab$sendModes$zh_CN {
  Translations$sendTab$sendModes$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get single => '一个接收者';

  String get multiple => '多个接收者';

  String get link => '应急发送';
}

// Path: settingsTab.general
class Translations$settingsTab$general$zh_CN {
  Translations$settingsTab$general$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '通用';

  String get brightness => '主题';

  late final Translations$settingsTab$general$brightnessOptions$zh_CN brightnessOptions = Translations$settingsTab$general$brightnessOptions$zh_CN.internal(
    _root,
  );

  String get color => '颜色';

  late final Translations$settingsTab$general$colorOptions$zh_CN colorOptions = Translations$settingsTab$general$colorOptions$zh_CN.internal(_root);

  String get language => '语言';

  late final Translations$settingsTab$general$languageOptions$zh_CN languageOptions = Translations$settingsTab$general$languageOptions$zh_CN.internal(
    _root,
  );

  String get saveWindowPlacement => '退出时保存窗口位置';

  String get saveWindowPlacementWindows => '退出时保存窗口位置';

  String get minimizeToTray => '关闭时最小化到系统托盘';

  String get launchAtStartup => '登录系统后自动启动程序';

  String get launchMinimized => '启动时最小化到任务栏';

  String get showInContextMenu => '在“发送到...”文件菜单中显示 YiDrop';

  String get animations => '动画效果';
}

// Path: settingsTab.receive
class Translations$settingsTab$receive$zh_CN {
  Translations$settingsTab$receive$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '接收';

  String get quickSave => _root.general.quickSave;

  String get quickSaveFromFavorites => _root.general.quickSaveFromFavorites;

  String get requirePin => _root.webSharePage.requirePin;

  String get autoFinish => '自动完成传输任务';

  String get destination => '保存目录';

  String get downloads => '(下载)';

  String get saveToGallery => '保存到相册';

  String get saveToHistory => '保存到历史记录';

  String get verifyChecksums => '接收文件时验证校验和';
}

// Path: settingsTab.send
class Translations$settingsTab$send$zh_CN {
  Translations$settingsTab$send$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '发送';

  String get shareViaLinkAutoAccept => '应急发送：自动接受下载请求';

  String get createChecksums => '发送文件时创建校验和';
}

// Path: settingsTab.network
class Translations$settingsTab$network$zh_CN {
  Translations$settingsTab$network$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '网络';

  String get needRestart => '重启服务器后生效！';

  String get server => '服务器';

  String get alias => '设备名称';

  String get deviceType => '设备类型';

  String get deviceModel => '设备型号';

  String get port => '端口';

  String get network => '网络';

  late final Translations$settingsTab$network$networkOptions$zh_CN networkOptions = Translations$settingsTab$network$networkOptions$zh_CN.internal(_root);

  String get discoveryTimeout => '搜索设备超时';

  String get useSystemName => '使用设备名称';

  String get generateRandomAlias => '生成随机昵称';

  String portWarning({required Object defaultPort}) =>
      '由于正在使用自定义端口，你可能不会被其他设备检测到。（默认端口：${defaultPort}）';

  String get encryption => '加密';

  String get multicastGroup => '多播';

  String multicastGroupWarning({required Object defaultMulticast}) =>
      '由于正在使用自定义多播地址，你可能不会被其他设备检测到。（默认地址：${defaultMulticast}）';
}

// Path: settingsTab.other
class Translations$settingsTab$other$zh_CN {
  Translations$settingsTab$other$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '其他';

  String get support => '支持 YiDrop';

  String get donate => '捐赠';

  String get privacyPolicy => 'YiDrop 主页';

  String get termsOfUse => '使用条款';
}

// Path: troubleshootPage.firewall
class Translations$troubleshootPage$firewall$zh_CN {
  Translations$troubleshootPage$firewall$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get symptom => '此设备可以发送文件至其他设备，但其它设备无法发送文件到此设备。';

  String solution({required Object port}) =>
      '这最可能是由防火墙规则设定引起的。你可以通过在端口 ${port} 上允许（UDP 和 TCP 的）传入请求来解决这个问题。';

  String get openFirewall => '打开防火墙';
}

// Path: troubleshootPage.noDiscovery
class Translations$troubleshootPage$noDiscovery$zh_CN {
  Translations$troubleshootPage$noDiscovery$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get symptom => '此设备未能发现其他设备。';

  String get solution =>
      '确保所有设备都处于同一个 Wi‑Fi 网络上，且共享相同的网络配置（端口、多播地址、加密选项）。你可以尝试手动输入目标设备的 IP 地址。如果起到了效果，请考虑将此设备添加到收藏夹中，以便将来可以自动发现。';
}

// Path: troubleshootPage.noConnection
class Translations$troubleshootPage$noConnection$zh_CN {
  Translations$troubleshootPage$noConnection$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get symptom => '双方设备均无法发现对方或者分享文件。';

  String get solution =>
      '当问题发生在双方设备上时，请先确认双方设备处于同一个 Wi‑Fi 或有线网络上，且被配置为相同的工作状态（端口、多播地址、加密选项）。若 Wi‑Fi 不允许参与者间通信，那么请在路由器中关闭“接入点 (AP) 隔离”选项。';
}

// Path: receiveHistoryPage.entryActions
class Translations$receiveHistoryPage$zh_CNtryActions$zh_CN {
  Translations$receiveHistoryPage$zh_CNtryActions$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get open => '打开文件';

  String get showInFolder => '在文件管理器中显示';

  String get info => '信息';

  String get deleteFromHistory => '从历史记录中删除';
}

// Path: deviceDetailsPage.info
class Translations$deviceDetailsPage$info$zh_CN {
  Translations$deviceDetailsPage$info$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get name => '名称';

  String get address => '地址';

  String get version => '版本';

  String protocol({required Object version}) => '协议 v${version}';
}

// Path: deviceDetailsPage.logs
class Translations$deviceDetailsPage$logs$zh_CN {
  Translations$deviceDetailsPage$logs$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '日志';

  String get empty => '没有可用的日志。';

  String discovered({required Object protocol, required Object host}) => '通过 ${protocol} 发现 (${host})';

  String updated({required Object protocol, required Object host}) => '通过 ${protocol} 更新 (${host})';
}

// Path: progressPage.total
class Translations$progressPage$total$zh_CN {
  Translations$progressPage$total$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final Translations$progressPage$total$title$zh_CN title = Translations$progressPage$total$title$zh_CN.internal(_root);

  String count({required Object curr, required Object n}) => '文件：${curr} / ${n}';

  String size({required Object curr, required Object n}) => '大小：${curr} / ${n}';

  String speed({required Object speed}) => '速度：${speed}/s';
}

// Path: progressPage.remainingTime
class Translations$progressPage$remainingTime$zh_CN {
  Translations$progressPage$remainingTime$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String minutesUnit({required num m}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(
    m,
    other: '${m}分钟',
  );

  String hoursUnit({required num h}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(
    h,
    other: '${h}小时',
  );

  String minutes({required Object m, required Object ss}) => '${m}:${ss}';

  String hours({required num h, required num m}) =>
      '${_root.progressPage.remainingTime.hoursUnit(h: h)} ${_root.progressPage.remainingTime.minutesUnit(m: m)}';
}

// Path: whatsNewPage.changes
class Translations$whatsNewPage$changes$zh_CN {
  Translations$whatsNewPage$changes$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final Translations$whatsNewPage$changes$v1_18_0$zh_CN v1_18_0 = Translations$whatsNewPage$changes$v1_18_0$zh_CN.internal(_root);
}

// Path: dialogs.addFile
class Translations$dialogs$addFile$zh_CN {
  Translations$dialogs$addFile$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '添加文件';

  String get content => '你想添加什么文件？';
}

// Path: dialogs.openFile
class Translations$dialogs$openFile$zh_CN {
  Translations$dialogs$openFile$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '打开文件';

  String get content => '你是否要打开接收的文件？';
}

// Path: dialogs.addressInput
class Translations$dialogs$addressInput$zh_CN {
  Translations$dialogs$addressInput$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '输入地址';

  String get hashtag => '标签';

  String get ip => 'IP 地址';

  String get recentlyUsed => '最近使用： ';
}

// Path: dialogs.cancelSession
class Translations$dialogs$cancelSession$zh_CN {
  Translations$dialogs$cancelSession$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '取消文件传输';

  String get content => '要取消文件传输吗？';
}

// Path: dialogs.cannotOpenFile
class Translations$dialogs$cannotOpenFile$zh_CN {
  Translations$dialogs$cannotOpenFile$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '无法打开文件';

  String content({required Object file}) => '无法打开 “${file}”。这个文件是否已被移动、重命名或删除？';
}

// Path: dialogs.encryptionDisabledNotice
class Translations$dialogs$zh_CNcryptionDisabledNotice$zh_CN {
  Translations$dialogs$zh_CNcryptionDisabledNotice$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '加密已关闭';

  String get content => '正在通过未加密的 HTTP 协议连接。要使用 HTTPS 协议，请开启加密选项。';
}

// Path: dialogs.errorDialog
class Translations$dialogs$errorDialog$zh_CN {
  Translations$dialogs$errorDialog$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => _root.general.error;
}

// Path: dialogs.favoriteDialog
class Translations$dialogs$favoriteDialog$zh_CN {
  Translations$dialogs$favoriteDialog$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '收藏夹';

  String get noFavorites => '还没有收藏的设备。';

  String get addFavorite => '新建';
}

// Path: dialogs.favoriteDeleteDialog
class Translations$dialogs$favoriteDeleteDialog$zh_CN {
  Translations$dialogs$favoriteDeleteDialog$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '删除收藏';

  String content({required Object name}) => '确定要取消收藏 “${name}” 吗?';
}

// Path: dialogs.favoriteEditDialog
class Translations$dialogs$favoriteEditDialog$zh_CN {
  Translations$dialogs$favoriteEditDialog$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get titleAdd => '添加到收藏夹';

  String get titleEdit => '设置';

  String get name => '名称';

  String get auto => '(自动)';

  String get ip => 'IP 地址';

  String get port => '端口';
}

// Path: dialogs.fileInfo
class Translations$dialogs$fileInfo$zh_CN {
  Translations$dialogs$fileInfo$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '文件信息';

  String get fileName => '文件名：';

  String get path => '路径：';

  String get size => '大小：';

  String get sender => '发送者：';

  String get time => '时间：';
}

// Path: dialogs.fileNameInput
class Translations$dialogs$fileNameInput$zh_CN {
  Translations$dialogs$fileNameInput$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '输入文件名';

  String original({required Object original}) => '原名：${original}';
}

// Path: dialogs.historyClearDialog
class Translations$dialogs$historyClearDialog$zh_CN {
  Translations$dialogs$historyClearDialog$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '清空历史记录';

  String get content => '确定要清空全部历史记录吗？';
}

// Path: dialogs.localNetworkUnauthorized
class Translations$dialogs$localNetworkUnauthorized$zh_CN {
  Translations$dialogs$localNetworkUnauthorized$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => _root.dialogs.noPermission.title;

  String get description =>
      'YiDrop 在没有扫描本地网络的权限的情况下无法找到其他设备。请在设置中授予此权限。';

  String get gotoSettings => '设置';
}

// Path: dialogs.messageInput
class Translations$dialogs$messageInput$zh_CN {
  Translations$dialogs$messageInput$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '输入消息';

  String get multiline => '多行';
}

// Path: dialogs.noFiles
class Translations$dialogs$noFiles$zh_CN {
  Translations$dialogs$noFiles$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '未选择文件';

  String get content => '请至少选择一个文件。';
}

// Path: dialogs.noPermission
class Translations$dialogs$noPermission$zh_CN {
  Translations$dialogs$noPermission$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '没有权限';

  String get content => '你尚未授予必要的权限。请在设置中授予权限。';
}

// Path: dialogs.notAvailableOnPlatform
class Translations$dialogs$notAvailableOnPlatform$zh_CN {
  Translations$dialogs$notAvailableOnPlatform$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '不可用';

  String get content => '此功能只在以下平台可用：';
}

// Path: dialogs.qr
class Translations$dialogs$qr$zh_CN {
  Translations$dialogs$qr$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '二维码';
}

// Path: dialogs.quickActions
class Translations$dialogs$quickActions$zh_CN {
  Translations$dialogs$quickActions$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '快速操作';

  String get counter => '计数器';

  String get prefix => '前缀';

  String get padZero => '以零填充';

  String get sortBeforeCount => '事先以字母顺序排序';

  String get random => '随机';
}

// Path: dialogs.quickSaveNotice
class Translations$dialogs$quickSaveNotice$zh_CN {
  Translations$dialogs$quickSaveNotice$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => _root.general.quickSave;

  String get content => '自动接受所有文件传输请求。请注意，和你处在同一网络中的任何人都将可以向你发送文件。';
}

// Path: dialogs.quickSaveFromFavoritesNotice
class Translations$dialogs$quickSaveFromFavoritesNotice$zh_CN {
  Translations$dialogs$quickSaveFromFavoritesNotice$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => _root.general.quickSaveFromFavorites;

  List<String> get content => [
    '当前会自动接受收藏夹中设备的文件请求。',
    '普通 HTTPS 收发通过客户端证书验证设备身份；仅知道指纹字符串，不能冒充持有对应私钥的设备。',
    '关闭加密使用 HTTP，或在网页模式下接收未提供客户端证书的请求时，仍可能回退到请求自报的指纹，不能认为同样安全。',
    '请只收藏可信设备；私钥泄露或设备被控制也会破坏这项保护。应急接收的“自动接受请求”是独立选项。',
  ];
}

// Path: dialogs.pin
class Translations$dialogs$pin$zh_CN {
  Translations$dialogs$pin$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '输入 PIN';
}

// Path: dialogs.sendModeHelp
class Translations$dialogs$sendModeHelp$zh_CN {
  Translations$dialogs$sendModeHelp$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => '发送模式';

  String get single => '发送文件给一个接收者。已选择的文件在发送后会取消选择。';

  String get multiple => '发送文件给多个接收者。已选择的文件在发送后不会取消选择。';

  String get link => '应急发送会创建临时网页，让未安装 YiDrop 的设备通过浏览器下载你选中的文件。';

  String get receive => '应急接收会创建临时网页，让其他设备通过浏览器向这台设备上传文件，无需预先选择文件。';
}

// Path: dialogs.zoom
class Translations$dialogs$zoom$zh_CN {
  Translations$dialogs$zoom$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => 'URL';
}

// Path: settingsTab.general.brightnessOptions
class Translations$settingsTab$general$brightnessOptions$zh_CN {
  Translations$settingsTab$general$brightnessOptions$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get system => '跟随系统';

  String get dark => '深色';

  String get light => '浅色';
}

// Path: settingsTab.general.colorOptions
class Translations$settingsTab$general$colorOptions$zh_CN {
  Translations$settingsTab$general$colorOptions$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get system => '跟随系统';

  String get oled => '深邃黑';

  String get custom => '自定义';
}

// Path: settingsTab.general.languageOptions
class Translations$settingsTab$general$languageOptions$zh_CN {
  Translations$settingsTab$general$languageOptions$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get system => '跟随系统';
}

// Path: settingsTab.network.networkOptions
class Translations$settingsTab$network$networkOptions$zh_CN {
  Translations$settingsTab$network$networkOptions$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get all => '所有';

  String get filtered => '已过滤';
}

// Path: progressPage.total.title
class Translations$progressPage$total$title$zh_CN {
  Translations$progressPage$total$title$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String sending({required Object time}) => '总进度 (${time})';

  String get finishedError => '已完成，但发生错误';

  String get canceledSender => '发送者已取消';

  String get canceledReceiver => '接收者已取消';
}

// Path: whatsNewPage.changes.v1_18_0
class Translations$whatsNewPage$changes$v1_18_0$zh_CN with WhatsNewStrings {
  Translations$whatsNewPage$changes$v1_18_0$zh_CN.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  @override
  List<String> get changes => [
    '加密不再减缓传输速度。如果你之前将其关闭，则现在已在此设备上重新启用。',
    '来自收藏夹的请求现在会被自动接受。这项功能是默认打开的，可以在设置中禁用。',
    '在Android上，当应用处于后台或屏幕关闭时，传输仍会继续。在iOS上，应用仍必须保持在前台。',
  ];
}
