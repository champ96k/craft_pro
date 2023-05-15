import 'package:craft_pro/core/constants/constant_colors.dart';
import 'package:craft_pro/src/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/home_screen/cubit/home_screen_cubit.dart';

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
      home: BlocProvider<HomeScreenCubit>(
        create: (context) => HomeScreenCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}

//!
