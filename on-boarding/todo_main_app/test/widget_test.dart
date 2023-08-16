import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/SecondPage.dart';
import 'package:to_do_app/ThirdPage.dart';
import 'package:to_do_app/FourthPage.dart';


void main() {
  testWidgets('Test HomePage', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify if the Get Started button exists
    expect(find.text('Get Started'), findsOneWidget);

    // Tap the Get Started button
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // Verify if the SecondPage is displayed
    expect(find.byType(SecondPage), findsOneWidget);
  });

  testWidgets('Test SecondPage', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the SecondPage
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // Verify if the title text exists
    expect(find.text('Todo List'), findsOneWidget);

    // Verify if the task list items are displayed
    expect(find.byType(Card), findsWidgets);

    // Tap the Create Task button
    await tester.tap(find.text('Create Task'));
    await tester.pumpAndSettle();

    // Verify if the ThirdPage is displayed
    expect(find.byType(ThirdPage), findsOneWidget);
  });

  testWidgets('Test ThirdPage', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the ThirdPage
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Create Task'));
    await tester.pumpAndSettle();

    // Verify if the Create New Task title exists
    expect(find.text('Create New Task'), findsOneWidget);

    // Enter data into fields and tap the Add Task button
    // (Add appropriate finder and action code here)

    // Verify if the FourthPage is displayed
    expect(find.byType(FourthPage), findsOneWidget);
  });

  // Similar tests for FourthPage can be added here

  // Add more tests as needed for various widgets and interactions
}
