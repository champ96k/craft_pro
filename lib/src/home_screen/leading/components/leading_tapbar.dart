import 'package:flutter/material.dart';

class LeadingTapBar extends StatelessWidget {
  const LeadingTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: _size.height * 0.035,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.calendar_view_week,
            size: 18.0,
            color: Colors.black45,
          ),
          Icon(
            Icons.calendar_today_outlined,
            size: 14.0,
            color: Colors.black45,
          ),
          Icon(
            Icons.search,
            size: 16.0,
            color: Colors.black45,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black45,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
