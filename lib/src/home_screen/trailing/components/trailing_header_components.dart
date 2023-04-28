import 'package:flutter/material.dart';

class TrailingHeaderComponents extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;
  final Color iconColor;
  final Function()? onTap;

  const TrailingHeaderComponents({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.iconData,
    this.onTap,
    this.iconColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _size.height * 0.06,
        width: _size.width * 0.19,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16.0),
            Icon(
              iconData,
              color: iconColor,
              size: 18.0,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  subTitle,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}
