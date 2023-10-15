import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k94_screen/models/k94_model.dart';part 'k94_event.dart';part 'k94_state.dart';/// A bloc that manages the state of a K94 according to the event that is dispatched to it.
class K94Bloc extends Bloc<K94Event, K94State> {K94Bloc(K94State initialState) : super(initialState) { on<K94InitialEvent>(_onInitialize); }

_onInitialize(K94InitialEvent event, Emitter<K94State> emit, ) async  {  } 
 }
