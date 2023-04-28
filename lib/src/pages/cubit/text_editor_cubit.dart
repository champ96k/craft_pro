import 'package:equatable/equatable.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_editor_state.dart';

class TextEditorCubit extends Cubit<TextEditorState> {
  TextEditorCubit() : super(TextEditorInitial()) {
    _listenControllerValue();
  }

  final FleatherController controller = FleatherController();

  Future<void> _listenControllerValue() async {
    try {
      controller.addListener(() {
        debugPrint("********** TEXT *********");
        debugPrint(controller.plainTextEditingValue.text);
        debugPrint("*******************");
      });
    } catch (e) {
      emit(TextEditorErrorState('$e'));
    }
  }
}
