import 'package:flutter/material.dart';
import 'package:flutter_app/modules/authentication/page/fragment_talk_done.dart';

class LoginNumberPhonePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTab(1),
                  _buildTab(2),
                  _buildTab(3),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 150,
                height: 150,
                child: Icon(
                  Icons.mail_outline,
                  color: Colors.blue,
                  size: 150,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enter OTP',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.08,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'OTP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  // Nút NEXT
                  SizedBox(
                    height: 60,
                    width: 320,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>LoginNumberPhonePage3()),
                        );
                      },
                      child: Text('Next',style: TextStyle(color: Colors.white, fontSize: 16),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // ProgressBar
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Resend OTP in 30 sec',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(int number) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: number == 2 ? Colors.blue[800] : Colors.white30,
      margin: EdgeInsets.all(10),
      child: Container(
        width: 32,
        height: 32,
        alignment: Alignment.center,
        child: Text(
          number.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
