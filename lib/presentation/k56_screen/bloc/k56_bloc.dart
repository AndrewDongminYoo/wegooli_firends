import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k56_screen/models/k56_model.dart';part 'k56_event.dart';part 'k56_state.dart';/// A bloc that manages the state of a K56 according to the event that is dispatched to it.
class K56Bloc extends Bloc<K56Event, K56State> {K56Bloc(K56State initialState) : super(initialState) { on<K56InitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<K56State> emit, ) { emit(state.copyWith(tf: event.value)); } 
_onInitialize(K56InitialEvent event, Emitter<K56State> emit, ) async  { emit(state.copyWith(cardnumberoneController: TextEditingController(), expirationdateController: TextEditingController(), zipcodeController: TextEditingController(), tf: false)); } 
 }
