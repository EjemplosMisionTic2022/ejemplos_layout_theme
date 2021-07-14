import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({Key? key}) : super(key: key);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  int counter = 0;
  List<String> entries = <String>[];

  void onPressed() {
    setState(() {
      entries.add(counter.toString());
      counter = entries.length;
    });
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => {onPressed()}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget row(String text, int colorIndex) {
    colorIndex = (colorIndex * 100) % 1000;
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
