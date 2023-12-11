import 'package:flutter/material.dart';
import 'package:flutter_app/activity_main.dart';
import 'package:flutter_app/upload_video.dart';

import 'fragment_talk_home.dart';
import 'fragment_talk_register.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                SizedBox(
                  height: 180,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const Text(
                  'SignChat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  'Lan truyền và kết nối',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Handle forgot password
                  },
                  child: const Text(
                    'Quên mật khẩu',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                const SizedBox(height: 20),
                SizedBox(
                  height: 60,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Đăng nhập'),
                  ),
                ),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Or'),
                    ),
                    Container(
                      height: 1,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 60,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Đăng nhập bằng số điện thoại'),
                  ),
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
                          MaterialPageRoute(builder: (context) => TalkRegisterFragment()),
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
      ),
    );
  }
}
