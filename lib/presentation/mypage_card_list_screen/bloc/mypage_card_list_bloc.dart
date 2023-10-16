// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_card_list_screen/models/mypage_card_list_model.dart';

part 'mypage_card_list_event.dart';
part 'mypage_card_list_state.dart';

/// A bloc that manages the state of a MyPageCardList according to the event that is dispatched to it.
class MyPageCardListBloc
    extends Bloc<MyPageCardListEvent, MyPageCardListState> {
  MyPageCardListBloc(MyPageCardListState initialState) : super(initialState) {
    on<MyPageCardListInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  Future<void> _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<MyPageCardListState> emit,
  ) async {
    emit(state.copyWith(radioGroup: event.value));
  }

  Future<void> _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<MyPageCardListState> emit,
  ) async {
    emit(state.copyWith(radioGroup1: event.value));
  }

  Future<void> _onInitialize(
    MyPageCardListInitialEvent event,
    Emitter<MyPageCardListState> emit,
  ) async {
    emit(state.copyWith(radioGroup: '', radioGroup1: ''));
  }
}
