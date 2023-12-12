import 'package:flutter/material.dart';


class HPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: TabBarView(
            children: [
              Container(child: Center(child: Text('Tab 1'))),
              Container(child: Center(child: Text('Tab 2'))),
              Container(child: Center(child: Text('Tab 3'))),
              Container(child: Center(child: Text('Tab 4'))),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.grey[200],
            child: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
                Tab(text: 'Tab 4'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}