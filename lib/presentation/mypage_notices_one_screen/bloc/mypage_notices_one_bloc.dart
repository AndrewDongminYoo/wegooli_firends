import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/list_item_model.dart';import 'package:wegooli_friends_app/presentation/mypage_notices_one_screen/models/mypage_notices_one_model.dart';part 'mypage_notices_one_event.dart';part 'mypage_notices_one_state.dart';/// A bloc that manages the state of a MypageNoticesOne according to the event that is dispatched to it.
class MypageNoticesOneBloc extends Bloc<MypageNoticesOneEvent, MypageNoticesOneState> {MypageNoticesOneBloc(MypageNoticesOneState initialState) : super(initialState) { on<MypageNoticesOneInitialEvent>(_onInitialize); }

_onInitialize(MypageNoticesOneInitialEvent event, Emitter<MypageNoticesOneState> emit, ) async  { emit(state.copyWith(mypageNoticesOneModelObj: state.mypageNoticesOneModelObj?.copyWith(listItemList: fillListItemList()))); } 
List<ListItemModel> fillListItemList() { return List.generate(9, (index) => ListItemModel()); } 
 }
