import 'package:flutter/material.dart';

class home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 33),
            Container(
              child: SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Image.asset('assets/images/top_background.png'),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: Column(
                        children: [
                          Text("Xin Chào",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white)),
                          Text("Khách",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 180, // Điều chỉnh vị trí top nếu cần
                      left: 10,
                      right: 10,
                      child: SizedBox(
                        height: 120, // Chiều cao của SizedBox
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white, // Màu nền vàng
                            borderRadius: BorderRadius.circular(20),
                          ),
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Khung thứ nhất
                              GestureDetector(
                                onTap: () {
                                  // Gọi giao diện khác ở đây
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.25, // Chiều rộng của mỗi khung nhỏ
                                  decoration: BoxDecoration(
                                    color: Colors.yellow, // Màu nền vàng
                                    borderRadius: BorderRadius.circular(10), // Bo góc
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/notification.png'), // Ảnh đầu tiên
                                      Text('Text 1'), // Text đầu tiên
                                    ],
                                  ),
                                ),
                              ),


                              // Khung thứ hai
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25, // Chiều rộng của mỗi khung nhỏ
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/image2.png'), // Ảnh thứ hai
                                    Text('Text 2'), // Text thứ hai
                                  ],
                                ),
                              ),
                              // Khung thứ ba
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25, // Chiều rộng của mỗi khung nhỏ
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/image3.png'), // Ảnh thứ ba
                                    Text('Text 3'), // Text thứ ba
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 260,
                      child: SizedBox(
                        height: 80,
                        child: Image.asset("assets/images/profile.png"),
                      ),
                    ),
                    // Position the SizedBox correctly
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
