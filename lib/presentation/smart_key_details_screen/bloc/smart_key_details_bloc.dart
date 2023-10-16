import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/smart_key_details_screen/models/smart_key_details_model.dart';part 'smart_key_details_event.dart';part 'smart_key_details_state.dart';/// A bloc that manages the state of a SmartKeyDetails according to the event that is dispatched to it.
class SmartKeyDetailsBloc extends Bloc<SmartKeyDetailsEvent, SmartKeyDetailsState> {SmartKeyDetailsBloc(SmartKeyDetailsState initialState) : super(initialState) { on<SmartKeyDetailsInitialEvent>(_onInitialize); }

_onInitialize(SmartKeyDetailsInitialEvent event, Emitter<SmartKeyDetailsState> emit, ) async  {  } 
 }
