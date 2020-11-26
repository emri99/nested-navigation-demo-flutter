import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/app.dart';
import 'package:nested_navigation_demo_flutter/settings.dart';

void main() {
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale('fr'),
      Locale('en'),
    ],
    path: 'assets/translations',
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
      routes: {
        "/settings": (_) => SettingsView(),
      },
    );
  }
}
