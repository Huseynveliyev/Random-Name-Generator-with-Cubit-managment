import 'package:bloc_apps_with_metmet_canacik/features/project1/project1_page.dart';
import 'package:bloc_apps_with_metmet_canacik/features/project2/project2_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Project2_Page(),
    );
  }
}
