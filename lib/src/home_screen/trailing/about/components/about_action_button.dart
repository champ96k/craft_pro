import 'package:flutter/material.dart';

class AboutActionButton extends StatelessWidget {
  const AboutActionButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black54,
              size: 19.0,
            ),
            SizedBox(width: _size.width * 0.01),
            Text(
              title,
              style: _textTheme.bodyMedium?.copyWith(
                color: Colors.black54,
                fontSize: 12.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
