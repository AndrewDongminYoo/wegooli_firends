import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/expiring_subscriptions_screen/models/expiring_subscriptions_model.dart';part 'expiring_subscriptions_event.dart';part 'expiring_subscriptions_state.dart';/// A bloc that manages the state of a ExpiringSubscriptions according to the event that is dispatched to it.
class ExpiringSubscriptionsBloc extends Bloc<ExpiringSubscriptionsEvent, ExpiringSubscriptionsState> {ExpiringSubscriptionsBloc(ExpiringSubscriptionsState initialState) : super(initialState) { on<ExpiringSubscriptionsInitialEvent>(_onInitialize); }

_onInitialize(ExpiringSubscriptionsInitialEvent event, Emitter<ExpiringSubscriptionsState> emit, ) async  {  } 
 }
