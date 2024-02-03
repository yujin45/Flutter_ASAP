// login_signup.dart
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Toast 메시지를 표시하기 위한 패키지 추가

class LoginSignupWidget extends StatelessWidget {
  final TextEditingController idController;
  final TextEditingController pwController;
  final VoidCallback onLoginPressed;
  final VoidCallback onSignupPressed;

  const LoginSignupWidget({
    required this.idController,
    required this.pwController,
    required this.onLoginPressed,
    required this.onSignupPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: idController,
          decoration: InputDecoration(
            labelText: 'ID',
            hintText: '아이디를 입력하세요',
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: pwController,
          decoration: InputDecoration(
            labelText: 'PW',
            hintText: '비밀번호를 입력하세요',
          ),
          obscureText: true,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 입력된 ID/PW가 '1234'/'1234'와 일치하는지 확인
                if (idController.text == 'hey' && pwController.text == 'hey') {
                  // 일치하면 upload_page1.dart로 이동
                  // 확인 결과 pw는 영문으로 입력됨. 비교도 영문으로
                  Navigator.pushReplacementNamed(context, '/upload_page1');
                } else {
                  // 불일치 시에는 Toast 메시지를 표시
                  Fluttertoast.showToast(
                    msg: 'ID 또는 PW가 일치하지 않습니다.',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                }
              },
              child: Text('로그인'),
            ),
            SizedBox(width: 16),
            OutlinedButton(
              onPressed: onSignupPressed,
              child: Text('회원 가입'),
            ),
          ],
        ),
      ],
    );
  }
}
