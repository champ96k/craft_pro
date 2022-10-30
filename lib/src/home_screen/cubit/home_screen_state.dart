part of 'home_screen_cubit.dart';

abstract class HomeScreenState extends Equatable {}

class HomeScreenInitial extends HomeScreenState {
  @override
  List<Object?> get props => ['HomeScreenInitial'];
}

class EditScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['HomeScreenInitial'];
}

class StartedScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['StartedScreenState'];
}

class UnsortedScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['UnsortedScreenState'];
}

class TempletsScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['TempletsScreenState'];
}

class SharedScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['SharedScreenState'];
}

class FolderViewScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['FolderViewScreenState'];
}

class RecentlyDeletediewScreenState extends HomeScreenState {
  @override
  List<Object?> get props => ['RecentlyDeletediewScreenState'];
}

class ErrorState extends HomeScreenState {
  final String errorMessage;
  ErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
