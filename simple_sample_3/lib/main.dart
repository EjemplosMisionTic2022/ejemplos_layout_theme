import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_sample_3/home_page.dart';

import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        //theme: MyTheme.ligthTheme,
        theme: MyTheme.ligthTheme,
        darkTheme: MyTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: HomePage());
  }
}
