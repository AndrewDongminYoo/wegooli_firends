import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_notices_no_notice_screen/models/mypage_notices_no_notice_model.dart';part 'mypage_notices_no_notice_event.dart';part 'mypage_notices_no_notice_state.dart';/// A bloc that manages the state of a MypageNoticesNoNotice according to the event that is dispatched to it.
class MypageNoticesNoNoticeBloc extends Bloc<MypageNoticesNoNoticeEvent, MypageNoticesNoNoticeState> {MypageNoticesNoNoticeBloc(MypageNoticesNoNoticeState initialState) : super(initialState) { on<MypageNoticesNoNoticeInitialEvent>(_onInitialize); }

_onInitialize(MypageNoticesNoNoticeInitialEvent event, Emitter<MypageNoticesNoNoticeState> emit, ) async  {  } 
 }
