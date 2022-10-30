import 'package:craft_pro/core/constants/constant_colors.dart';
import 'package:craft_pro/src/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Craft Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ConstantColors.primaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
