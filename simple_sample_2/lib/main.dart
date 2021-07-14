import 'package:flutter/material.dart';

import 'dynamic_list.dart';
import 'list_builder.dart';
import 'simple_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List on Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SimpleList(),
      //home: ListBuilder()
      home: DynamicList(),
    );
  }
}
