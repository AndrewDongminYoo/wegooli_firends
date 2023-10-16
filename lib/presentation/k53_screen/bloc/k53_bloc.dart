import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k53_screen/models/k53_model.dart';part 'k53_event.dart';part 'k53_state.dart';/// A bloc that manages the state of a K53 according to the event that is dispatched to it.
class K53Bloc extends Bloc<K53Event, K53State> {K53Bloc(K53State initialState) : super(initialState) { on<K53InitialEvent>(_onInitialize); }

_onInitialize(K53InitialEvent event, Emitter<K53State> emit, ) async  { emit(state.copyWith(zipcodeoneController: TextEditingController(), defaultaddressController: TextEditingController(), detailedaddressController: TextEditingController(), emailaddressController: TextEditingController(), passwordcomboController: TextEditingController(), passwordreenterController: TextEditingController(), nicknameinputController: TextEditingController())); } 
 }
