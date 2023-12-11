import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'fragment_talk_otp.dart';

class TalkRegisterFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTab(1),
                  _buildTab(2),
                  _buildTab(3),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Nhập thông tin tài khoản',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          buildTextField('Name', Icons.person),
                          SizedBox(height: 16),
                          buildTextField('Email', Icons.email),
                          SizedBox(height: 16),
                          SizedBox(
                            child: IntlPhoneField(
                              decoration: InputDecoration(
                                labelText: 'Mobile',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(Icons.phone),
                              ),
                              initialCountryCode: 'VN',
                              onChanged: (phone) {
                                // Handle phone number changes
                              },
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: buildTextField('Gender', Icons.male),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: buildTextField('Address', Icons.home),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          buildTextField('Calender', Icons.calendar_today),
                          SizedBox(height: 16),
                          buildTextField('Password', Icons.lock, obscureText: true),
                          SizedBox(height: 16),
                          buildTextField('Confirm password', Icons.lock, obscureText: true),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6),
              SizedBox(
                height: 60,
                width: 320,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginNumberPhonePage2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Send OTP'),
                ),
              ),
              SizedBox(height: 16),
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
      color: number == 1 ? Colors.blue[800] : Colors.white30,
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
  Widget buildTextField(String hintText, IconData? prefixIcon, {bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        ),
      ),
    );
  }
}