// Smoke test for the Last Love onboarding shell.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:last_love_fe/app/app.dart';

void main() {
  testWidgets('App boots into MaterialApp.router without crashing',
      (tester) async {
    await tester.pumpWidget(const ProviderScope(child: LastLoveApp()));
    await tester.pump();
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
