import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yidrop_app/gen/strings.g.dart';
import 'package:yidrop_app/model/persistence/quick_save_mode.dart';
import 'package:yidrop_app/widget/quick_save_selector.dart';

void main() {
  testWidgets('three segments show the persisted mode and remain mutually exclusive', (tester) async {
    var mode = QuickSaveMode.paired;
    final changes = <QuickSaveMode>[];
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) => QuickSaveSelector(
              value: mode,
              onChanged: (next) async {
                changes.add(next);
                setState(() => mode = next);
              },
            ),
          ),
        ),
      ),
    );

    SegmentedButton<QuickSaveMode> control() => tester.widget(find.byKey(const ValueKey('quick-save-selector')));
    expect(control().segments.map((s) => s.value), [QuickSaveMode.off, QuickSaveMode.paired, QuickSaveMode.on]);
    expect(control().selected, {QuickSaveMode.paired});
    expect(control().multiSelectionEnabled, false);
    expect(control().emptySelectionAllowed, false);

    await tester.tap(find.text(t.receiveTab.quickSave.on));
    await tester.pumpAndSettle();
    expect(control().selected, {QuickSaveMode.on});
    await tester.tap(find.text(t.receiveTab.quickSave.off));
    await tester.pumpAndSettle();
    expect(control().selected, {QuickSaveMode.off});
    await tester.tap(find.text(t.receiveTab.quickSave.favorites));
    await tester.pumpAndSettle();
    expect(control().selected, {QuickSaveMode.paired});
    expect(changes, [QuickSaveMode.on, QuickSaveMode.off, QuickSaveMode.paired]);
  });

  testWidgets('disables repeated taps until the settings write completes', (tester) async {
    final pending = Completer<void>();
    var writes = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: QuickSaveSelector(
            value: QuickSaveMode.off,
            onChanged: (_) {
              writes++;
              return pending.future;
            },
          ),
        ),
      ),
    );
    await tester.tap(find.text(t.receiveTab.quickSave.on));
    await tester.pump();
    final control = tester.widget<SegmentedButton<QuickSaveMode>>(find.byKey(const ValueKey('quick-save-selector')));
    expect(control.onSelectionChanged, isNull);
    await tester.tap(find.text(t.receiveTab.quickSave.favorites));
    expect(writes, 1);
    pending.complete();
    await tester.pumpAndSettle();
    expect(tester.widget<SegmentedButton<QuickSaveMode>>(find.byKey(const ValueKey('quick-save-selector'))).onSelectionChanged, isNotNull);
  });
}
