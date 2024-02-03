// onboarding_page1.dart
import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:

          Image.asset(
            'assets/images/onboarding_image_01.png',
            height: MediaQuery.of(context).size.height * 0.5, // 화면 높이의 50%로 조절
            fit: BoxFit.cover,
          ),
          ),
          SizedBox(height: 16),
          Text(
            'ASAP',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'ASAP 내 통장 잔고 반 쪼가리~',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
