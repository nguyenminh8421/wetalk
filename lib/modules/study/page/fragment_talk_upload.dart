import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Hashtag'),
                      content: Container(
                        width: double.maxFinite,
                        child: ListView.builder(
                          itemCount: 26,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                String.fromCharCode(index + 65),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Hashtag'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Upload'),
                ),
                SizedBox(width: 16),
                TextButton(
                  onPressed: () {},
                  child: Text('Quay'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
