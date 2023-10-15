import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_contact_us_empty_history_screen/models/mypage_contact_us_empty_history_model.dart';part 'mypage_contact_us_empty_history_event.dart';part 'mypage_contact_us_empty_history_state.dart';/// A bloc that manages the state of a MypageContactUsEmptyHistory according to the event that is dispatched to it.
class MypageContactUsEmptyHistoryBloc extends Bloc<MypageContactUsEmptyHistoryEvent, MypageContactUsEmptyHistoryState> {MypageContactUsEmptyHistoryBloc(MypageContactUsEmptyHistoryState initialState) : super(initialState) { on<MypageContactUsEmptyHistoryInitialEvent>(_onInitialize); }

_onInitialize(MypageContactUsEmptyHistoryInitialEvent event, Emitter<MypageContactUsEmptyHistoryState> emit, ) async  {  } 
 }
