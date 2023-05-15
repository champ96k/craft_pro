import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class TrailingTopHeaders extends StatelessWidget {
  const TrailingTopHeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            size: 14.0,
          ),
          const SizedBox(width: 16.0),
          const Icon(
            Icons.arrow_forward_ios,
            size: 14.0,
            color: Colors.black38,
          ),
          const SizedBox(width: 16.0),
          const Text("Craft Pro"),
          const Spacer(),
          // MacosIcon(CupertinoIcons.add),
          MacosPulldownButton(
            icon: CupertinoIcons.ellipsis_circle,
            items: [
              MacosPulldownMenuItem(
                title: const Text('Save'),
                onTap: () => debugPrint("Saving..."),
              ),
              MacosPulldownMenuItem(
                title: const Text('Save as...'),
                onTap: () => debugPrint("Opening Save As dialog..."),
              ),
              const MacosPulldownMenuDivider(),
              MacosPulldownMenuItem(
                enabled: false,
                title: const Text('Export'),
                onTap: () => debugPrint("Exporting"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
