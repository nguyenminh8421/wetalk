import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/modules/home/page/fragment_talk_home1.dart';
import 'package:flutter_app/upload_video.dart';

import '../../home/page/fragment_talk_home.dart';
import 'fragment_talk_register.dart';

class MyWidget extends StatelessWidget {
  static String routeName = "login_screen";  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 330,
                  child: Image.asset('assets/images/top_background1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Chào Mừng Bạn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {
                          // Handle visibility toggle
                        },
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 220), // Dịch SizedBox cách lề phải 30px
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/btn_arraw1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 60,
                    color: Colors.transparent, // Ẩn IconButton
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                  ),
                ),
              ),


                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 140,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.blueGrey, width: 1),
                      ),
                      child: Center(
                        child: Text(
                          'Vào nhanh',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3B608C),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 140,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.blueGrey, width: 1),
                      ),
                      child: Center(
                        child: Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3B608C),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),




                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Bạn chưa có tài khoản?"),
                    GestureDetector(
                      onTap: () {
                        // Handle sign up
                        Navigator.push(
                          context,
                          // MaterialPageRoute(builder: (context) => TalkRegisterFragment()),
                          MaterialPageRoute(builder: (context) => home1()),
                        );
                      },
                      child: const Text(
                        ' Đăng kí',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                const Visibility(
                  visible: false,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
