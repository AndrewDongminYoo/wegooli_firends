import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k91_dialog/models/k91_model.dart';part 'k91_event.dart';part 'k91_state.dart';/// A bloc that manages the state of a K91 according to the event that is dispatched to it.
class K91Bloc extends Bloc<K91Event, K91State> {K91Bloc(K91State initialState) : super(initialState) { on<K91InitialEvent>(_onInitialize); }

_onInitialize(K91InitialEvent event, Emitter<K91State> emit, ) async  {  } 
 }
