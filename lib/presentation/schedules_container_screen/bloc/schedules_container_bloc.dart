import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/schedules_container_screen/models/schedules_container_model.dart';part 'schedules_container_event.dart';part 'schedules_container_state.dart';/// A bloc that manages the state of a SchedulesContainer according to the event that is dispatched to it.
class SchedulesContainerBloc extends Bloc<SchedulesContainerEvent, SchedulesContainerState> {SchedulesContainerBloc(SchedulesContainerState initialState) : super(initialState) { on<SchedulesContainerInitialEvent>(_onInitialize); }

_onInitialize(SchedulesContainerInitialEvent event, Emitter<SchedulesContainerState> emit, ) async  {  } 
 }
