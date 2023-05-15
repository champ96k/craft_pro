import 'package:equatable/equatable.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_delta/quill_delta.dart';

part 'text_editor_state.dart';

class TextEditorCubit extends Cubit<TextEditorState> {
  TextEditorCubit() : super(TextEditorInitial()) {
    _listenControllerValue();
  }

  FleatherController controller = FleatherController();

  void preFillValue({String value = ''}) {
    final Delta delta = Delta();
    delta.insert(value + '\n');
    final document = ParchmentDocument.fromDelta(delta);
    controller = FleatherController(document);
  }

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
