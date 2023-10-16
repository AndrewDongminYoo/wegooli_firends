// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signin_page_screen/models/signin_page_model.dart';

part 'signin_page_event.dart';
part 'signin_page_state.dart';

/// A bloc that manages the state of a SigninPage according to the event that is dispatched to it.
class SigninPageBloc extends Bloc<SigninPageEvent, SigninPageState> {
  SigninPageBloc(SigninPageState initialState) : super(initialState) {
    on<SigninPageInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SigninPageInitialEvent event,
    Emitter<SigninPageState> emit,
  ) async {
    emit(state.copyWith(
      emailinputoneController: TextEditingController(),
      passwordinputController: TextEditingController(),
    ));
  }
}
