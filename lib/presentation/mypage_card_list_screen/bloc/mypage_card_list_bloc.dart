import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_card_list_screen/models/mypage_card_list_model.dart';part 'mypage_card_list_event.dart';part 'mypage_card_list_state.dart';/// A bloc that manages the state of a MypageCardList according to the event that is dispatched to it.
class MypageCardListBloc extends Bloc<MypageCardListEvent, MypageCardListState> {MypageCardListBloc(MypageCardListState initialState) : super(initialState) { on<MypageCardListInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<MypageCardListState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<MypageCardListState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_onInitialize(MypageCardListInitialEvent event, Emitter<MypageCardListState> emit, ) async  { emit(state.copyWith(radioGroup: "", radioGroup1: "")); } 
 }
