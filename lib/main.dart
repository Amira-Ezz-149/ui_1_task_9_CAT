import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_task_9_cat/screens/home_screen.dart';
import 'package:ui_task_9_cat/screens/project_details.dart';
void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: new ThemeData(
          //primarySwatch: Colors.yellow.shade400,
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
          ),
        ),
      home: HomeScreen()
    );
  }
}
