import 'package:craft_pro/core/model/folder_model.dart';
import 'package:craft_pro/src/widget/template_placeholder.dart';
import 'package:flutter/material.dart';

class FolderViewScreen extends StatelessWidget {
  const FolderViewScreen({Key? key, required this.folder}) : super(key: key);

  final FolderModel? folder;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (folder == null ||
        folder?.itemCount == null ||
        int.parse(folder?.itemCount ?? '') == 0) {
      return Column(
        children: [
          TemplatePlaceholder(title: folder?.name ?? 'Documents'),
          Container(
            height: _size.height * 0.75,
            width: _size.width,
            alignment: Alignment.center,
            child: const Text(
              "This folder is empty",
              style: TextStyle(
                color: Colors.black38,
                fontStyle: FontStyle.italic,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      );
    } else {
      return Text(
        """
      \n Name: ${folder?.name},
      \n emoji: ${folder?.emoji},
      \n Total Item found: ${folder?.itemCount},      
      """,
      );
    }
  }
}
