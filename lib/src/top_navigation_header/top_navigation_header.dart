import 'package:craft_pro/src/top_navigation_header/components/leading_top_header.dart';
import 'package:craft_pro/src/top_navigation_header/components/trailing_top_headers.dart';
import 'package:flutter/material.dart';

class TopNavigationHeader extends StatelessWidget {
  const TopNavigationHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.06,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
      ),
      child: Row(
        children: const [
          Expanded(
            flex: 2,
            child: LeadingTopHeader(),
          ),
          Expanded(
            flex: 10,
            child: TrailingTopHeaders(),
          ),
        ],
      ),
    );
  }
}
