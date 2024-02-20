import 'dart:async';
import 'package:flutter/material.dart';
import 'modules/home/page/fragment_talk_home.dart';
import 'package:flutter_app/modules/authentication/page/fragment_talk_login.dart';

// import 'fragment_talk_chat.dart';
// import 'fragment_talk_home.dart';
// import 'package:flutter_app/fragment_talk_login.dart';
final GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Activity_Main(),
      ),
    );
  }
}
class Activity_Main extends StatefulWidget {
  @override
  _Activity_MainState createState() => _Activity_MainState();
}

class _Activity_MainState extends State<Activity_Main> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyWidget()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 160,
                height: 160,
              ),
              const SizedBox(height: 20),
              const Text(
                'SignChat',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),


          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: const Text(
              'Developed by iBME Lab',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
