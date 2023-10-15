import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k111_dialog/models/k111_model.dart';part 'k111_event.dart';part 'k111_state.dart';/// A bloc that manages the state of a K111 according to the event that is dispatched to it.
class K111Bloc extends Bloc<K111Event, K111State> {K111Bloc(K111State initialState) : super(initialState) { on<K111InitialEvent>(_onInitialize); }

_onInitialize(K111InitialEvent event, Emitter<K111State> emit, ) async  {  } 
 }
