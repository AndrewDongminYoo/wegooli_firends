import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k99_screen/models/k99_model.dart';part 'k99_event.dart';part 'k99_state.dart';/// A bloc that manages the state of a K99 according to the event that is dispatched to it.
class K99Bloc extends Bloc<K99Event, K99State> {K99Bloc(K99State initialState) : super(initialState) { on<K99InitialEvent>(_onInitialize); }

_onInitialize(K99InitialEvent event, Emitter<K99State> emit, ) async  {  } 
 }
