import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_notices_screen/models/mypage_notices_item_model.dart';import 'package:wegooli_friends_app/presentation/mypage_notices_screen/models/mypage_notices_model.dart';part 'mypage_notices_event.dart';part 'mypage_notices_state.dart';/// A bloc that manages the state of a MyPageNotices according to the event that is dispatched to it.
class MyPageNoticesBloc extends Bloc<MyPageNoticesEvent, MyPageNoticesState> {MyPageNoticesBloc(MyPageNoticesState initialState) : super(initialState) { on<MyPageNoticesInitialEvent>(_onInitialize); }

_onInitialize(MyPageNoticesInitialEvent event, Emitter<MyPageNoticesState> emit, ) async  { emit(state.copyWith(mypageNoticesModelObj: state.mypageNoticesModelObj?.copyWith(mypageNoticesItemList: fillMyPageNoticesItemList()))); }
List<MyPageNoticesItemModel> fillMyPageNoticesItemList() { return List.generate(9, (index) => MyPageNoticesItemModel()); }
 }
