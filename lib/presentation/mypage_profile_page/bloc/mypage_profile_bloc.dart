import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_profile_page/models/mypage_profile_model.dart';part 'mypage_profile_event.dart';part 'mypage_profile_state.dart';/// A bloc that manages the state of a MypageProfile according to the event that is dispatched to it.
class MypageProfileBloc extends Bloc<MypageProfileEvent, MypageProfileState> {MypageProfileBloc(MypageProfileState initialState) : super(initialState) { on<MypageProfileInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); on<ChangeSwitch2Event>(_changeSwitch2); }

_changeSwitch(ChangeSwitchEvent event, Emitter<MypageProfileState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<MypageProfileState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_changeSwitch2(ChangeSwitch2Event event, Emitter<MypageProfileState> emit, ) { emit(state.copyWith(isSelectedSwitch2: event.value)); } 
_onInitialize(MypageProfileInitialEvent event, Emitter<MypageProfileState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false)); } 
 }
