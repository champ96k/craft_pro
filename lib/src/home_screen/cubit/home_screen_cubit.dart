import 'dart:async';

import 'package:craft_pro/core/constants/enums/documents_view_enum.dart';
import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/core/model/editor_model.dart';
import 'package:craft_pro/core/model/folder_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());

  StreamController<DocumentsView> documentsViewStream =
      StreamController.broadcast();

  Future<void> changeView({
    ViewState viewState = ViewState.view,
    FolderModel? folderModel,
    List<EditorModel> models = const [],
    EditorModel? editModel,
  }) async {
    try {
      switch (viewState) {
        case ViewState.edit:
          emit(EditScreenState(model: editModel));
          break;

        case ViewState.started:
          emit(StartedScreenState(models: models));
          break;

        case ViewState.unsorted:
          emit(UnsortedScreenState(models: models));
          break;

        case ViewState.templets:
          emit(TempletsScreenState(models: models));
          break;

        case ViewState.folderView:
          emit(FolderViewScreenState(folderModel: folderModel));
          break;

        case ViewState.recentlyDeleted:
          emit(RecentlyDeletediewScreenState(models: models));
          break;

        case ViewState.shared:
          emit(SharedScreenState(models: models));
          break;

        default:
          emit(HomeScreenInitial());
          break;
      }
    } catch (e) {
      emit(ErrorState("Error: $e"));
    }
  }

  void changeDocumentView(DocumentsView event) {
    documentsViewStream.add(event);
  }
}
