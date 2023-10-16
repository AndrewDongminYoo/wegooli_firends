import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_card_register_screen/models/mypage_card_register_model.dart';
part 'mypage_card_register_event.dart';
part 'mypage_card_register_state.dart';

/// A bloc that manages the state of a MyPageCardRegister according to the event that is dispatched to it.
class MyPageCardRegisterBloc
    extends Bloc<MyPageCardRegisterEvent, MyPageCardRegisterState> {
  MyPageCardRegisterBloc(MyPageCardRegisterState initialState)
      : super(initialState) {
    on<MyPageCardRegisterInitialEvent>(_onInitialize);
  }

  void _onInitialize(
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
