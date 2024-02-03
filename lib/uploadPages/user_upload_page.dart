import 'package:flutter/material.dart';
import 'screens/upload_page1.dart';
import 'screens/upload_page2.dart';
import 'screens/upload_page3.dart';

class UserUploadPage extends StatefulWidget {
  static final GlobalKey<_UserUploadPageState> userUploadPageKey =
  GlobalKey<_UserUploadPageState>();

  @override
  _UserUploadPageState createState() => _UserUploadPageState();
}

class _UserUploadPageState extends State<UserUploadPage> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    UploadPage1(),
    UploadPage2(),
    UploadPage3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Add your menu functionality here
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/my_menu_image.png', // replace with your menu image asset
              height: 30,
              width: 30,
            ),
            SizedBox(width: 8),
            Text(
              'ASAP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.orange,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_open),
            onPressed: () {
              // Add your menu expansion functionality here
            },
          ),
        ],
      ),
      body: _pages[_currentPageIndex],
    );
  }

  void navigateToUserUploadPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserUploadPage()),
    );
  }
}
