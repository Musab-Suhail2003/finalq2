import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_q2/main.dart';

void main() {
  testWidgets('Golden test for WeeklyExpenseChart', (WidgetTester tester) async {

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        debugShowCheckedModeBanner: false,
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

    // Verify bookmark icon is present
    expect(find.byWidget(WeeklyExpenseChart().Circle(48)), findsOneWidget);
    expect(find.byWidget(WeeklyExpenseChart().buildLegendItem('Grocery', '\$758.20', Colors.purple.shade200)), findsOneWidget);

    
  });
}
