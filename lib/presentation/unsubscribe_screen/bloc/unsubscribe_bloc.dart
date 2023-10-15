import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/unsubscribe_screen/models/unsubscribe_model.dart';part 'unsubscribe_event.dart';part 'unsubscribe_state.dart';/// A bloc that manages the state of a Unsubscribe according to the event that is dispatched to it.
class UnsubscribeBloc extends Bloc<UnsubscribeEvent, UnsubscribeState> {UnsubscribeBloc(UnsubscribeState initialState) : super(initialState) { on<UnsubscribeInitialEvent>(_onInitialize); }

_onInitialize(UnsubscribeInitialEvent event, Emitter<UnsubscribeState> emit, ) async  {  } 
 }
