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
        home: const ProductScreen(),
      ),
    );

    // Wait for any animations to complete
    await tester.pumpAndSettle();

    // Compare with golden file
    await expectLater(
      find.byType(ProductCard),
      matchesGoldenFile('goldens/ui_sc.png'),
    );

    // Reset the screen size
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });

  testWidgets('Product card contains all required elements', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: ProductCard(),
          ),
        ),
      ),
    );

    // Verify text elements
    expect(find.text('AirPods Max — Silver'), findsOneWidget);
    expect(find.text('A\$899.00'), findsOneWidget);
    expect(find.text('Free Engraving'), findsOneWidget);

    // Verify bookmark icon is present
    expect(find.byIcon(Icons.bookmark_border), findsOneWidget);

    // Verify button with bookmark icon is present
    expect(find.widgetWithIcon(IconButton, Icons.bookmark_border), findsOneWidget);
    
  });
}
