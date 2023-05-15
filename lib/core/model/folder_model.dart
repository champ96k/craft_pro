import 'package:craft_pro/core/model/editor_model.dart';

class FolderModel {
  final String name;
  final String? emoji;
  final String itemCount;
  final String description;
  final EditorModel editorModel;

  FolderModel({
    required this.name,
    this.emoji,
    required this.itemCount,
    required this.editorModel,
    this.description = 'Add a description to this folder',
  });
}
