import 'package:flutter/material.dart';

class TrailingTopHeaders extends StatelessWidget {
  const TrailingTopHeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: const [
          Icon(
            Icons.arrow_back_ios,
            size: 14.0,
          ),
          SizedBox(width: 16.0),
          Icon(
            Icons.arrow_forward_ios,
            size: 14.0,
            color: Colors.black38,
          ),
          SizedBox(width: 16.0),
          Text("Craft Pro"),
          Spacer(),
          Icon(Icons.add),
          SizedBox(width: 20.0),
          Icon(Icons.add),
        ],
      ),
    );
  }
}
