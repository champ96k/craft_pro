part of 'home_screen_cubit.dart';

abstract class HomeScreenState extends Equatable {}

class HomeScreenInitial extends HomeScreenState {
  @override
  List<Object?> get props => ['HomeScreenInitial'];
}

class EditScreenState extends HomeScreenState {
  final EditorModel? model;
  EditScreenState({required this.model});
  @override
  List<Object?> get props => [model];
}

class StartedScreenState extends HomeScreenState {
  final List<EditorModel> models;
  StartedScreenState({required this.models});
  @override
  List<Object?> get props => [models];
}

class UnsortedScreenState extends HomeScreenState {
  final List<EditorModel> models;
  UnsortedScreenState({required this.models});
  @override
  List<Object?> get props => [models];
}

class TempletsScreenState extends HomeScreenState {
  final List<EditorModel> models;
  TempletsScreenState({required this.models});
  @override
  List<Object?> get props => [models];
}

class SharedScreenState extends HomeScreenState {
  final List<EditorModel> models;
  SharedScreenState({required this.models});
  @override
  List<Object?> get props => [models];
}

class FolderViewScreenState extends HomeScreenState {
  final FolderModel? folderModel;

  FolderViewScreenState({this.folderModel});
  @override
  List<Object?> get props => [folderModel];
}

class RecentlyDeletediewScreenState extends HomeScreenState {
  final List<EditorModel> models;
  RecentlyDeletediewScreenState({required this.models});
  @override
  List<Object?> get props => [models];
}

class ErrorState extends HomeScreenState {
  final String errorMessage;
  ErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
