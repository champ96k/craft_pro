class FolderModel {
  final String name;
  final String? emoji;
  final String itemCount;
  final String description;

  FolderModel({
    required this.name,
    this.emoji,
    required this.itemCount,
    this.description = 'Add a description to this folder',
  });
}
