import 'package:flutter/material.dart';

class ExpandPlaceholder extends StatelessWidget {
  const ExpandPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.046,
      width: _size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          6.0,
        ),
        color: Colors.black.withOpacity(0.03),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Text(
              "Recently Viewed",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            SizedBox(width: _size.width * 0.015),
            Text(
              "Daily Notes",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.grey.withOpacity(0.16),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 6.0,
                ),
                child: Text(
                  "Show",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
