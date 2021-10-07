import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../domain/models/human.dart';

class StylizedCard extends StatefulWidget {
  StylizedCard({Key? key}) : super(key: key);

  @override
  _StylizedCardState createState() => _StylizedCardState();
}

class _StylizedCardState extends State<StylizedCard> {
  int counter = 0;
  List<Human> entries = <Human>[];

  void onPressed() {
    setState(() {
      entries.add(Human(faker.person.name(), faker.internet.email()));
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
        itemBuilder: (context, index) {
          return _row(entries[index], index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => {onPressed()}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _row(Human human, int index) {
    return Dismissible(
        key: UniqueKey(),
        background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Deleting",
                style: TextStyle(color: Colors.white),
              ),
            )),
        child: _card(human),
        onDismissed: (direction) {
          // Remove the item from the data source.
          setState(() {
            entries.remove(human);
          });
        });
  }

  Widget _card(Human human) {
    return Card(
      margin: EdgeInsets.all(4.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: Icon(Icons.contacts),
        title: Text(human.name),
        subtitle: Text(human.email),
        isThreeLine: true,
      ),
    );
  }
}
