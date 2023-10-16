import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k89_screen/models/k89_model.dart';part 'k89_event.dart';part 'k89_state.dart';/// A bloc that manages the state of a K89 according to the event that is dispatched to it.
class K89Bloc extends Bloc<K89Event, K89State> {K89Bloc(K89State initialState) : super(initialState) { on<K89InitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<K89State> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<K89State> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_onInitialize(K89InitialEvent event, Emitter<K89State> emit, ) async  { emit(state.copyWith(radioGroup: '', radioGroup1: '')); } 
 }
