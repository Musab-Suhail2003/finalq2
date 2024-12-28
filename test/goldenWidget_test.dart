import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_q2/main.dart';

void main() {
  testWidgets('Golden test for ProductScreen', (WidgetTester tester) async {
    // Set the screen size
    tester.binding.window.physicalSizeTestValue = const Size(339, 512);
    tester.binding.window.devicePixelRatioTestValue = 1.0;

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const WeeklyExpenseChart(),
      ),
    );

    // Wait for any animations to complete
    await tester.pumpAndSettle();

    // Compare with golden file
    await expectLater(
      find.byType(WeeklyExpenseChart),
      matchesGoldenFile('goldens/ui_sc.png'),
    );

    // Reset the screen size
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
}
