import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k101_screen/models/k101_model.dart';part 'k101_event.dart';part 'k101_state.dart';/// A bloc that manages the state of a K101 according to the event that is dispatched to it.
class K101Bloc extends Bloc<K101Event, K101State> {K101Bloc(K101State initialState) : super(initialState) { on<K101InitialEvent>(_onInitialize); }

_onInitialize(K101InitialEvent event, Emitter<K101State> emit, ) async  {  } 
 }
