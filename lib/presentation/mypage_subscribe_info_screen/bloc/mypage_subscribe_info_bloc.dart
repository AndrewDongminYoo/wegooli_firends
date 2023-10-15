import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_subscribe_info_screen/models/mypage_subscribe_info_model.dart';part 'mypage_subscribe_info_event.dart';part 'mypage_subscribe_info_state.dart';/// A bloc that manages the state of a MypageSubscribeInfo according to the event that is dispatched to it.
class MypageSubscribeInfoBloc extends Bloc<MypageSubscribeInfoEvent, MypageSubscribeInfoState> {MypageSubscribeInfoBloc(MypageSubscribeInfoState initialState) : super(initialState) { on<MypageSubscribeInfoInitialEvent>(_onInitialize); }

_onInitialize(MypageSubscribeInfoInitialEvent event, Emitter<MypageSubscribeInfoState> emit, ) async  {  } 
 }
