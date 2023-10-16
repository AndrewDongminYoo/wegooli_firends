import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k88_screen/models/k88_model.dart';part 'k88_event.dart';part 'k88_state.dart';/// A bloc that manages the state of a K88 according to the event that is dispatched to it.
class K88Bloc extends Bloc<K88Event, K88State> {K88Bloc(K88State initialState) : super(initialState) { on<K88InitialEvent>(_onInitialize); }

_onInitialize(K88InitialEvent event, Emitter<K88State> emit, ) async  {  } 
 }
