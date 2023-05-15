import 'package:craft_pro/src/pages/cubit/text_editor_cubit.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditComponents extends StatefulWidget {
  const EditComponents({Key? key}) : super(key: key);

  @override
  State<EditComponents> createState() => _EditComponentsState();
}

class _EditComponentsState extends State<EditComponents> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return FleatherEditor(
      controller: context.read<TextEditorCubit>().controller,
      focusNode: _focusNode,
      autofocus: true,
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      showCursor: true,
      onLaunchUrl: _launchUrl,
      enableInteractiveSelection: true,
      expands: true,
      contextMenuBuilder: (context, editableTextState) {
        return Text("No info ${editableTextState.textEditingValue.text}");
      },
      embedBuilder: (context, node) {
        return Text("data: ${node.value}");
      },
      textCapitalization: TextCapitalization.sentences,
    );
  }

  void _launchUrl(String? url) async {}
}
