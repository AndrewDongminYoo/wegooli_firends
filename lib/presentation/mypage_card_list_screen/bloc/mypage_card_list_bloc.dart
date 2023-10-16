import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_card_list_screen/models/mypage_card_list_model.dart';part 'mypage_card_list_event.dart';part 'mypage_card_list_state.dart';/// A bloc that manages the state of a MyPageCardList according to the event that is dispatched to it.
class MyPageCardListBloc extends Bloc<MyPageCardListEvent, MyPageCardListState> {MyPageCardListBloc(MyPageCardListState initialState) : super(initialState) { on<MyPageCardListInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<MyPageCardListState> emit, ) { emit(state.copyWith(radioGroup: event.value)); }
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<MyPageCardListState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); }
_onInitialize(MyPageCardListInitialEvent event, Emitter<MyPageCardListState> emit, ) async  { emit(state.copyWith(radioGroup: '', radioGroup1: '')); }
 }
