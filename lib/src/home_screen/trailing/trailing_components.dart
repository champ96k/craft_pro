import 'package:craft_pro/src/home_screen/trailing/components/trailing_header_components.dart';
import 'package:flutter/material.dart';

class TrailingComponents extends StatelessWidget {
  const TrailingComponents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _constSpacing = SizedBox(height: _size.height * 0.03);
    return SizedBox(
      width: _size.width,
      height: _size.height,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _constSpacing,
            const Text(
              "All Documents",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            _constSpacing,
            Row(
              children: const [
                TrailingHeaderComponents(
                  title: 'New Documents',
                  subTitle: 'Start writing on blank page',
                  iconData: Icons.note_add,
                ),
                SizedBox(width: 20.0),
                TrailingHeaderComponents(
                  title: 'New Folder',
                  subTitle: 'Quickly organize your notes',
                  iconData: Icons.create_new_folder_outlined,
                  iconColor: Colors.indigoAccent,
                ),
                SizedBox(width: 20.0),
                TrailingHeaderComponents(
                  title: 'Templetes',
                  subTitle: 'Browes & Pick a templets',
                  iconData: Icons.ten_mp,
                  iconColor: Colors.grey,
                ),
                SizedBox(width: 20.0),
              ],
            ),
            _constSpacing,
            const Text("Bottom helper widget"),
          ],
        ),
      ),
    );
  }
}
