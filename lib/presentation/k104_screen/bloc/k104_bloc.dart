import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k104_screen/models/k104_model.dart';part 'k104_event.dart';part 'k104_state.dart';/// A bloc that manages the state of a K104 according to the event that is dispatched to it.
class K104Bloc extends Bloc<K104Event, K104State> {K104Bloc(K104State initialState) : super(initialState) { on<K104InitialEvent>(_onInitialize); }

_onInitialize(K104InitialEvent event, Emitter<K104State> emit, ) async  { emit(state.copyWith(cardnumberoneController: TextEditingController(), expirationdateController: TextEditingController(), zipcodeController: TextEditingController(), edittextController: TextEditingController())); } 
 }
