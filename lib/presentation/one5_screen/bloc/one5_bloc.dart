import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/one5_screen/models/one5_model.dart';part 'one5_event.dart';part 'one5_state.dart';/// A bloc that manages the state of a One5 according to the event that is dispatched to it.
class One5Bloc extends Bloc<One5Event, One5State> {One5Bloc(One5State initialState) : super(initialState) { on<One5InitialEvent>(_onInitialize); }

_onInitialize(One5InitialEvent event, Emitter<One5State> emit, ) async  {  } 
 }
