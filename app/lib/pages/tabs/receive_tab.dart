import 'package:flutter/material.dart';
import 'package:refena_flutter/refena_flutter.dart';
import 'package:routerino/routerino.dart';
import 'package:yidrop_app/gen/strings.g.dart';
import 'package:yidrop_app/model/persistence/quick_save_mode.dart';
import 'package:yidrop_app/model/state/server/server_state.dart';
import 'package:yidrop_app/pages/home_page.dart';
import 'package:yidrop_app/pages/home_page_controller.dart';
import 'package:yidrop_app/pages/receive_history_page.dart';
import 'package:yidrop_app/provider/animation_provider.dart';
import 'package:yidrop_app/provider/local_ip_provider.dart';
import 'package:yidrop_app/provider/network/server/server_provider.dart';
import 'package:yidrop_app/provider/settings_provider.dart';
import 'package:yidrop_app/util/ip_helper.dart';
import 'package:yidrop_app/widget/animations/initial_fade_transition.dart';
import 'package:yidrop_app/widget/column_list_view.dart';
import 'package:yidrop_app/widget/custom_icon_button.dart';
import 'package:yidrop_app/widget/dialogs/quick_save_from_favorites_notice.dart';
import 'package:yidrop_app/widget/dialogs/quick_save_notice.dart';
import 'package:yidrop_app/widget/local_send_logo.dart';
import 'package:yidrop_app/widget/quick_save_selector.dart';
import 'package:yidrop_app/widget/responsive_list_view.dart';
import 'package:yidrop_app/widget/rotating_widget.dart';
import 'package:yidrop_isolates/util/sleep.dart';

class ReceiveTab extends StatefulWidget {
  const ReceiveTab();

  @override
  State<ReceiveTab> createState() => _ReceiveTabState();
}

class _ReceiveTabState extends State<ReceiveTab> {
  /// Whether the advanced network info is shown
  bool _showAdvanced = false;

  /// Whether the history button is shown
  /// This extra boolean is needed to delay the animation
  bool _showHistoryButton = true;

  Future<void> _toggleAdvanced() async {
    if (_showAdvanced) {
      setState(() => _showAdvanced = false);
      await sleepAsync(200);
      if (mounted) {
        setState(() => _showHistoryButton = true);
      }
    } else {
      setState(() {
        _showAdvanced = true;
        _showHistoryButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final alias = context.watch(settingsProvider.select((s) => s.alias));
    final quickSaveMode = context.watch(
      settingsProvider.select(
        (s) => s.quickSave ? QuickSaveMode.on : (s.quickSaveFromFavorites ? QuickSaveMode.paired : QuickSaveMode.off),
      ),
    );
    final serverState = context.watch(serverProvider);
    final localIps = context.watch(localIpProvider.select((s) => s.localIps));

    return Stack(
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: ResponsiveListView.defaultMaxWidth),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ColumnListView(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InitialFadeTransition(
                          duration: const Duration(milliseconds: 300),
                          delay: const Duration(milliseconds: 200),
                          child: Consumer(
                            builder: (context, ref) {
                              final animations = ref.watch(animationProvider);
                              final activeTab = ref.watch(homePageControllerProvider.select((state) => state.currentTab));
                              return RotatingWidget(
                                duration: const Duration(seconds: 15),
                                spinning: serverState != null && animations && activeTab == HomeTab.receive,
                                child: const YiDropLogo(withText: false),
                              );
                            },
                          ),
                        ),
                        InitialFadeTransition(
                          duration: const Duration(milliseconds: 300),
                          delay: const Duration(milliseconds: 350),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(serverState?.alias ?? alias, style: const TextStyle(fontSize: 48)),
                          ),
                        ),
                        InitialFadeTransition(
                          duration: const Duration(milliseconds: 300),
                          delay: const Duration(milliseconds: 500),
                          child: Text(
                            serverState == null ? t.general.offline : formatReceiveVisualIds(localIps),
                            style: const TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InitialFadeTransition(
                    duration: const Duration(milliseconds: 300),
                    delay: const Duration(milliseconds: 650),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: QuickSaveSelector(
                          value: quickSaveMode,
                          onChanged: (mode) async {
                            await context.ref.notifier(settingsProvider).setQuickSaveMode(mode);
                            if (!context.mounted) return;
                            if (mode == QuickSaveMode.on) {
                              await QuickSaveNotice.open(context);
                            } else if (mode == QuickSaveMode.paired) {
                              await QuickSaveFromFavoritesNotice.open(context);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
        _InfoBox(
          serverState: serverState,
          localIps: localIps,
          showAdvanced: _showAdvanced,
        ),
        _CornerButtons(
          showAdvanced: _showAdvanced,
          showHistoryButton: _showHistoryButton,
          toggleAdvanced: _toggleAdvanced,
        ),
      ],
    );
  }
}

class _CornerButtons extends StatelessWidget {
  final bool showAdvanced;
  final bool showHistoryButton;
  final Future<void> Function() toggleAdvanced;

  const _CornerButtons({
    required this.showAdvanced,
    required this.showHistoryButton,
    required this.toggleAdvanced,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (!showAdvanced)
              AnimatedOpacity(
                opacity: showHistoryButton ? 1 : 0,
                duration: const Duration(milliseconds: 200),
                child: CustomIconButton(
                  onPressed: () async {
                    await context.push(() => const ReceiveHistoryPage());
                  },
                  child: const Icon(Icons.history),
                ),
              ),
            CustomIconButton(
              key: const ValueKey('info-btn'),
              onPressed: toggleAdvanced,
              child: const Icon(Icons.info),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoBox extends StatelessWidget {
  final ServerState? serverState;
  final List<String> localIps;
  final bool showAdvanced;

  const _InfoBox({
    required this.serverState,
    required this.localIps,
    required this.showAdvanced,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState: showAdvanced ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 200),
      firstChild: Container(),
      secondChild: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Table(
                columnWidths: const {
                  0: IntrinsicColumnWidth(),
                  1: IntrinsicColumnWidth(),
                  2: IntrinsicColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      Text(t.receiveTab.infoBox.alias),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SelectableText(serverState?.alias ?? '-'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(t.receiveTab.infoBox.ip),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (localIps.isEmpty) Text(t.general.unknown),
                          ...localIps.map((ip) => SelectableText(ip)),
                        ],
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(t.receiveTab.infoBox.port),
                      const SizedBox(width: 10),
                      SelectableText(serverState?.port.toString() ?? '-'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
