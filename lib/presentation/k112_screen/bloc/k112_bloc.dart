import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k112_screen/models/k112_model.dart';part 'k112_event.dart';part 'k112_state.dart';/// A bloc that manages the state of a K112 according to the event that is dispatched to it.
class K112Bloc extends Bloc<K112Event, K112State> {K112Bloc(K112State initialState) : super(initialState) { on<K112InitialEvent>(_onInitialize); }

_onInitialize(K112InitialEvent event, Emitter<K112State> emit, ) async  {  } 
 }
