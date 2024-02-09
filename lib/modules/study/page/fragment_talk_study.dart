import 'package:flutter/material.dart';
import 'fragment_talk_upload.dart';
final GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class TalkStudyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Học tập"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/ic_sign_language.png',
                    height: 130.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Text('Bảng chữ cái')),
                            Icon(Icons.navigate_next, color: Colors.black), // Assuming you use Material icons
                          ],
                        ),
                        Text('Học bảng chữ cái thông qua video'),
                      ],
                    ),
                  ),
                  Divider(),
                  Image.asset(
                    'assets/images/ic_sign_number.jpg',
                    height: 130.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Text('Số đếm')),
                            Icon(Icons.navigate_next, color: Colors.black), // Assuming you use Material icons
                          ],
                        ),
                        Text('Học số đếm thông qua video'),
                      ],
                    ),
                  ),
                  Divider(),
                  Image.asset(
                    'assets/images/ic_bar_sign.png',
                    height: 130.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Text('Dấu trong tiếng Việt')),
                            Icon(Icons.navigate_next, color: Colors.black), // Assuming you use Material icons
                          ],
                        ),
                        Text('Học dấu thông qua video'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),

            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Xử lý khi expanded đầu tiên được nhấn
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Upload()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ontap.jpg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            Text('Học Tập'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/cungcap.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Text('Cung Cấp'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/kho.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Text('Kho'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),

              ],
            )

          ],
        ),
      ),
    );
  }
}
