import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List on Flutter'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          row(600, 'Entry A'),
          row(500, 'Entry B'),
          row(100, 'Entry C'),
        ],
      ),
    );
  }

  Widget row(int colorIndex, String text) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 50,
      color: Colors.amber[colorIndex],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${text}',
          style: TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }
}
