// onboarding_page2.dart
import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Expanded(child:
          Image.asset(
            'assets/images/onboarding_image_02.png',
            height: MediaQuery.of(context).size.height * 0.5, // 화면 높이의 50%로 조절
            fit: BoxFit.cover,
          ),
      ),
          SizedBox(height: 16),
          Text(
            'To. 지안 From. 유진',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '지안아 figma to flutter 그거 못해먹겠더라',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
