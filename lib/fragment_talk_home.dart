import 'package:flutter/material.dart';
import 'package:flutter_app/fragment_talk_chat_home.dart';
import 'package:flutter_app/fragment_talk_profile.dart';
import 'package:flutter_app/upload_video.dart';

import 'fragment_talk_chat.dart';
import 'fragment_talk_study.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: MyMainContentView(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 180,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SizedBox(
                        child: Image.asset(
                          'assets/images/logo.png',
                        ),
                      ),
                    ),
                  ),
                  // Add Drawer items here
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          // Handle bottom navigation bar item tap
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMainScreen()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => TalkStudyScreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page4()));
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Tin nhắn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload_file_rounded),
            label: 'Học tập',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cá nhân',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Khám phá',
          ),
        ],
      ),
    );
  }
}

class MyMainContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Main content'));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(child: Text('Content of Page 1')),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(child: Text('Content of Page 2')),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Center(child: Text('Content of Page 3')),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 4')),
      body: Center(child: Text('Content of Page 4')),
    );
  }
}
