import 'package:flutter/material.dart';

class LeadingTopHeader extends StatelessWidget {
  const LeadingTopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: _size.height,
      width: _size.width,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: const ListTile(
        minLeadingWidth: 0.0,
        minVerticalPadding: 0.0,
        leading: CircleAvatar(
          backgroundColor: Colors.purple,
          radius: 10.0,
        ),
        title: Text(
          "Tushar Nikam",
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        trailing: Icon(
          Icons.space_dashboard_outlined,
          size: 18,
        ),
      ),
    );
  }
}
