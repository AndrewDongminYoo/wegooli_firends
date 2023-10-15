import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/mypage_notices_item_model.dart';import 'package:wegooli_friends_app/presentation/mypage_notices_screen/models/mypage_notices_model.dart';part 'mypage_notices_event.dart';part 'mypage_notices_state.dart';/// A bloc that manages the state of a MypageNotices according to the event that is dispatched to it.
class MypageNoticesBloc extends Bloc<MypageNoticesEvent, MypageNoticesState> {MypageNoticesBloc(MypageNoticesState initialState) : super(initialState) { on<MypageNoticesInitialEvent>(_onInitialize); }

_onInitialize(MypageNoticesInitialEvent event, Emitter<MypageNoticesState> emit, ) async  { emit(state.copyWith(mypageNoticesModelObj: state.mypageNoticesModelObj?.copyWith(mypageNoticesItemList: fillMypageNoticesItemList()))); } 
List<MypageNoticesItemModel> fillMypageNoticesItemList() { return List.generate(9, (index) => MypageNoticesItemModel()); } 
 }
