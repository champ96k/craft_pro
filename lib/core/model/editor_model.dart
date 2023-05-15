class EditorModel {
  final String contain;
  final String title;
  final String subTitle;
  final String description;
  final String createAt;
  final bool isStarred;
  final String updatedAt;
  final String auther;
  final String shareLink;

  const EditorModel({
    required this.contain,
    required this.title,
    this.subTitle = '',
    this.description = '',
    required this.createAt,
    this.isStarred = false,
    required this.updatedAt,
    this.auther = '',
    this.shareLink = '',
  });
}
