import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/one8_screen/models/one8_model.dart';part 'one8_event.dart';part 'one8_state.dart';/// A bloc that manages the state of a One8 according to the event that is dispatched to it.
class One8Bloc extends Bloc<One8Event, One8State> {One8Bloc(One8State initialState) : super(initialState) { on<One8InitialEvent>(_onInitialize); }

_onInitialize(One8InitialEvent event, Emitter<One8State> emit, ) async  { emit(state.copyWith(cardnumberoneController: TextEditingController(), expirationdateController: TextEditingController(), tfController: TextEditingController(), edittextController: TextEditingController())); } 
 }
