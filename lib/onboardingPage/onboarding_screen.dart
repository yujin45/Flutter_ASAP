// onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './login_singup.dart';
import './screens/onboarding_page1.dart';
import './screens/onboarding_page2.dart';
import './screens/onboarding_page3.dart';
import '../uploadPages/user_upload_page.dart';
import 'package:fluttertoast/fluttertoast.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      _currentPage == 0
          ? SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.light,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.primaryDelta! > 0) {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else if (details.primaryDelta! < 0) {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    // Additional handling for the last page
                  }
                }
              },
              child: PageView(
                controller: _pageController,
                physics: AlwaysScrollableScrollPhysics(),
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });

                  SystemChrome.setSystemUIOverlayStyle(
                    _currentPage == 0
                        ? SystemUiOverlayStyle.dark
                        : SystemUiOverlayStyle.light,
                  );
                },
                children: [
                  OnboardingPage1(),
                  OnboardingPage2(),
                  OnboardingPage3(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildDot(0),
                buildDot(1),
                buildDot(2),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child:  _currentPage == 0 || _currentPage == 1 || _currentPage == 2
                ? LoginSignupWidget(
              idController: idController,
              pwController: pwController,
              onLoginPressed: () {
                // 입력된 ID/PW가 'hey'/'hey'와 일치하는지 확인
                if (idController.text == 'hey' && pwController.text == 'hey') {
                  // 일치하면 UserUploadPage로 이동
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => UserUploadPage()),
                  );
                } else {
                  // 불일치 시에는 Toast 메시지를 표시
                  Fluttertoast.showToast(
                    msg: 'ID 또는 PW가 일치하지 않습니다.',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                }
              },
              onSignupPressed: () {
                // 회원 가입 버튼을 눌렀을 때의 동작 추가
              },
            )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int pageIndex) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == pageIndex ? Colors.orange : Colors.grey,
      ),
    );
  }
}
