import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_subscribe_info_no_subscription_screen/models/mypage_subscribe_info_no_subscription_model.dart';part 'mypage_subscribe_info_no_subscription_event.dart';part 'mypage_subscribe_info_no_subscription_state.dart';/// A bloc that manages the state of a MypageSubscribeInfoNoSubscription according to the event that is dispatched to it.
class MypageSubscribeInfoNoSubscriptionBloc extends Bloc<MypageSubscribeInfoNoSubscriptionEvent, MypageSubscribeInfoNoSubscriptionState> {MypageSubscribeInfoNoSubscriptionBloc(MypageSubscribeInfoNoSubscriptionState initialState) : super(initialState) { on<MypageSubscribeInfoNoSubscriptionInitialEvent>(_onInitialize); }

_onInitialize(MypageSubscribeInfoNoSubscriptionInitialEvent event, Emitter<MypageSubscribeInfoNoSubscriptionState> emit, ) async  {  } 
 }
