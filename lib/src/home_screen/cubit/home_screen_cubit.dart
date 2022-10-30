import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());

  Future<void> changeView({ViewState viewState = ViewState.view}) async {
    try {
      switch (viewState) {
        case ViewState.edit:
          emit(EditScreenState());
          break;

        case ViewState.started:
          emit(StartedScreenState());
          break;

        case ViewState.unsorted:
          emit(UnsortedScreenState());
          break;

        case ViewState.templets:
          emit(TempletsScreenState());
          break;

        case ViewState.folderView:
          emit(FolderViewScreenState());
          break;

        case ViewState.recentlyDeleted:
          emit(RecentlyDeletediewScreenState());
          break;

        case ViewState.shared:
          emit(SharedScreenState());
          break;

        default:
          emit(HomeScreenInitial());
          break;
      }
    } catch (e) {
      emit(ErrorState("Error: $e"));
    }
  }
}
