import 'package:bni_project/screens/home_widget.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "bmi app",
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primaryColor: Colors.yellow,
         visualDensity: VisualDensity.adaptivePlatformDensity
       ),
      home: const ScreenHome(),
    );
  }
}