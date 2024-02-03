// onboarding_page3.dart
import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Expanded(child:
          Image.asset(
            'assets/images/onboarding_image_03.png',
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
            '지안아 내가 페이지랑 기능은 만들어둘테니까 너가 나중에 UI 갈아끼워야 한다?',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
