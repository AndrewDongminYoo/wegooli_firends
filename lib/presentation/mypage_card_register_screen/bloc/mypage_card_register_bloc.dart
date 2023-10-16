// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_card_register_screen/models/mypage_card_register_model.dart';

part 'mypage_card_register_event.dart';
part 'mypage_card_register_state.dart';

/// A bloc that manages the state of a MyPageCardRegister according to the event that is dispatched to it.
class MyPageCardRegisterBloc
    extends Bloc<MyPageCardRegisterEvent, MyPageCardRegisterState> {
  MyPageCardRegisterBloc(MyPageCardRegisterState initialState)
      : super(initialState) {
    on<MyPageCardRegisterInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageCardRegisterInitialEvent event,
    Emitter<MyPageCardRegisterState> emit,
  ) async {
    emit(state.copyWith(
        cardnumbervalueController: TextEditingController(),
        expirationdatevController: TextEditingController(),
        zipcodeController: TextEditingController(),
        edittextController: TextEditingController()));
  }
}
