import 'package:flutter/material.dart';

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
                    'assets/images/',
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
                ],
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Card(
                    // ... card contents
                  ),
                ),
                Expanded(
                  child: Card(
                    // ... card contents
                  ),
                ),
                Expanded(
                  child: Card(
                    // ... card contents
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
