import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  final List entries = ['A', 'B', 'C'];
  final List colors = [Colors.red, Colors.green, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List on Flutter'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (context, posicion) {
          return row(entries[posicion], posicion);
        },
      ),
    );
  }

  Widget row(String text, int colorIndex) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 50,
      color: colors[colorIndex],
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
