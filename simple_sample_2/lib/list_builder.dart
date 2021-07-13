import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  final List entries = ['A', 'B', 'C'];
  final List colors = [Colors.red, Colors.green, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (context, posicion) {
        return Container(
          alignment: Alignment.centerLeft,
          height: 50,
          color: colors[posicion],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              entries[posicion],
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
    );
  }
}
