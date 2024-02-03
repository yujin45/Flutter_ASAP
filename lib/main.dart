// main.dart
import 'package:flutter/material.dart';
import 'onboardingPage/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}
//플러터.. 위젯 구성.. 괄호 속 괄호
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}
