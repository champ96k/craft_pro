import 'package:craft_pro/src/home_screen/trailing/about/components/about_action_button.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class AboutTraillingTile extends StatelessWidget {
  const AboutTraillingTile({
    Key? key,
    this.aboutText = 'Browse documents within this Space',
  }) : super(key: key);

  final String? aboutText;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    final _constSpacing = SizedBox(height: _size.height * 0.014);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _constSpacing,
          const Text(
            "About",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          _constSpacing,
          Text(aboutText ?? '', style: _textTheme.bodySmall),
          _constSpacing,
          const Divider(),
          _constSpacing,
          const Text(
            "Action",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          _constSpacing,
          const AboutActionButton(
            icon: Icons.file_download_outlined,
            title: 'Import Files',
          ),
          const AboutActionButton(
            icon: Icons.file_upload_outlined,
            title: 'Export Contents',
          ),
          const AboutActionButton(
            icon: Icons.timeline_rounded,
            title: 'Stats',
          ),
          _constSpacing,
          const Divider(),
          _constSpacing,
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: HelpButton(
              onPressed: () => showMacosAlertDialog(
                context: context,
                builder: (context) => MacosAlertDialog(
                  appIcon: const FlutterLogo(
                    size: 56,
                  ),
                  title: const Text(
                    'Alert Dialog with Primary Action',
                  ),
                  message: const Text(
                    'This is an alert dialog with a primary action and no secondary action',
                  ),
                  primaryButton: PushButton(
                    buttonSize: ButtonSize.large,
                    onPressed: Navigator.of(context).pop,
                    child: const Text('Primary'),
                  ),
                ),
              ),
              color: MacosColors.windowFrameColor,
            ),
          ),
          _constSpacing,
        ],
      ),
    );
  }
}
