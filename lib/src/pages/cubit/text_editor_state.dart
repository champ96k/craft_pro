part of 'text_editor_cubit.dart';

abstract class TextEditorState extends Equatable {}

class TextEditorInitial extends TextEditorState {
  @override
  List<Object?> get props => ['TextEditorInitial'];
}

class TextEditorErrorState extends TextEditorState {
  final String errorMessage;
  TextEditorErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
