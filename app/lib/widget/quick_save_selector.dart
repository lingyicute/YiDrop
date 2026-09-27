import 'package:flutter/material.dart';
import 'package:yidrop_app/gen/strings.g.dart';
import 'package:yidrop_app/model/persistence/quick_save_mode.dart';

/// The receive page's original Off / Favorites / Everyone control.
/// The caller owns persistence and warnings. Disable interaction during a write
/// so a fast second tap cannot race a slower settings update.
class QuickSaveSelector extends StatefulWidget {
  final QuickSaveMode value;
  final Future<void> Function(QuickSaveMode) onChanged;

  const QuickSaveSelector({required this.value, required this.onChanged, super.key});

  @override
  State<QuickSaveSelector> createState() => _QuickSaveSelectorState();
}

class _QuickSaveSelectorState extends State<QuickSaveSelector> {
  bool _saving = false;

  Future<void> _select(Set<QuickSaveMode> selection) async {
    final mode = selection.single;
    if (_saving || mode == widget.value) return;
    setState(() => _saving = true);
    try {
      await widget.onChanged(mode);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(t.general.quickSave),
        const SizedBox(height: 10),
        SegmentedButton<QuickSaveMode>(
          key: const ValueKey('quick-save-selector'),
          multiSelectionEnabled: false,
          emptySelectionAllowed: false,
          showSelectedIcon: false,
          selected: {widget.value},
          onSelectionChanged: _saving ? null : _select,
          segments: [
            ButtonSegment(value: QuickSaveMode.off, label: Text(t.receiveTab.quickSave.off)),
            ButtonSegment(value: QuickSaveMode.paired, label: Text(t.receiveTab.quickSave.favorites)),
            ButtonSegment(value: QuickSaveMode.on, label: Text(t.receiveTab.quickSave.on)),
          ],
        ),
      ],
    );
  }
}
