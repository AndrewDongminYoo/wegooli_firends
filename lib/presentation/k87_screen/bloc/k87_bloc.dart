import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k87_screen/models/k87_model.dart';part 'k87_event.dart';part 'k87_state.dart';/// A bloc that manages the state of a K87 according to the event that is dispatched to it.
class K87Bloc extends Bloc<K87Event, K87State> {K87Bloc(K87State initialState) : super(initialState) { on<K87InitialEvent>(_onInitialize); }

_onInitialize(K87InitialEvent event, Emitter<K87State> emit, ) async  {  } 
 }
