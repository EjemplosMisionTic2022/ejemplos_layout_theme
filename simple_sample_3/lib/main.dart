import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:simple_sample_3/ui/pages/home_page.dart';
import 'package:simple_sample_3/ui/theme/theme.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // To use the GetX libary we need
    // to use GetMaterialApp
    return GetMaterialApp(
        title: 'Flutter Theme Demo',
        debugShowCheckedModeBanner: false,
        theme: MyTheme
            .ligthTheme, // Apply the theme referenced by the theme property on
        // MaterialApp
        darkTheme:
            MyTheme.darkTheme, // Apply the theme referenced by the darkTheme
        // property on MaterialApp
        themeMode:
            ThemeMode.system, // Apply the theme that matches the mode currently
        // in use on the device
        home: HomePage());
  }
}
