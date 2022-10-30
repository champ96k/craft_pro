import 'package:craft_pro/src/home_screen/leading/leading_components.dart';
import 'package:craft_pro/src/home_screen/trailing/trailing_components.dart';
import 'package:craft_pro/src/top_navigation_header/top_navigation_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///[Top Navigation header]
          const Expanded(child: TopNavigationHeader(), flex: 1),

          Expanded(
            flex: 15,
            child: Row(
              children: const [
                Expanded(flex: 2, child: LeadingComponents()),
                Expanded(flex: 10, child: TrailingComponents()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
