import 'package:flutter/material.dart';
import 'package:simple_sample_1/ui/widgets/flex_exp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex and Expande example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlexExpand(),
    );
  }
}
