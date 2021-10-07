import 'package:flutter/material.dart';

import 'ui/widgets/dynamic_list.dart';
import 'ui/widgets/list_builder.dart';
import 'ui/widgets/simple_list.dart';
import 'ui/widgets/stylized_list.dart';

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
      //home: DynamicList(),
      home: StylizedCard(),
    );
  }
}
