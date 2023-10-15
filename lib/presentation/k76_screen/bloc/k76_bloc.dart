import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k76_screen/models/k76_model.dart';part 'k76_event.dart';part 'k76_state.dart';/// A bloc that manages the state of a K76 according to the event that is dispatched to it.
class K76Bloc extends Bloc<K76Event, K76State> {K76Bloc(K76State initialState) : super(initialState) { on<K76InitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); on<ChangeSwitch2Event>(_changeSwitch2); }

_changeSwitch(ChangeSwitchEvent event, Emitter<K76State> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<K76State> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_changeSwitch2(ChangeSwitch2Event event, Emitter<K76State> emit, ) { emit(state.copyWith(isSelectedSwitch2: event.value)); } 
_onInitialize(K76InitialEvent event, Emitter<K76State> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false)); } 
 }
