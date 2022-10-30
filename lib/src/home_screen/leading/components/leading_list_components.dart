import 'package:flutter/material.dart';

class LeadingListComponents extends StatelessWidget {
  final String title;
  final IconData? icon;
  final double iconSize;
  final bool isSelected;
  final String? count;
  final String? emoji;
  final Function()? onTap;
  const LeadingListComponents({
    Key? key,
    required this.title,
    this.icon = Icons.folder_open,
    this.isSelected = false,
    this.emoji,
    this.onTap,
    this.iconSize = 16.0,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _size.height * 0.035,
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(6.0),
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            const SizedBox(width: 10.0),
            emoji != null
                ? Text(emoji ?? '')
                : Icon(
                    icon,
                    size: iconSize,
                    color: Colors.black45,
                  ),
            const SizedBox(width: 16.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 13.0,
              ),
            ),
            if (count != null && isSelected) ...[
              const Spacer(),
              Text(
                count ?? '',
                style: const TextStyle(
                  fontSize: 11.0,
                  color: Colors.black12,
                ),
              ),
              const SizedBox(width: 12.0),
            ],
          ],
        ),
      ),
    );
  }
}
