import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k90_dialog/models/k90_model.dart';part 'k90_event.dart';part 'k90_state.dart';/// A bloc that manages the state of a K90 according to the event that is dispatched to it.
class K90Bloc extends Bloc<K90Event, K90State> {K90Bloc(K90State initialState) : super(initialState) { on<K90InitialEvent>(_onInitialize); }

_onInitialize(K90InitialEvent event, Emitter<K90State> emit, ) async  { emit(state.copyWith(valueoneController: TextEditingController())); } 
 }
