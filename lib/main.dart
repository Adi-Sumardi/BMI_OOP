import 'package:bmi_oop/constants/constant.dart';
import 'package:bmi_oop/screens/bmi_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: secondColor,
        appBarTheme:const AppBarTheme(
          backgroundColor: primaryColor,
        ),
        primarySwatch: Colors.blue,
      ),
      home:const BmiData(),
    );
  }
}