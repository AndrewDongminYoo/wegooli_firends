import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userquery_item_model.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_page/models/mypage_contact_us_inquiry_history_model.dart';
part 'mypage_contact_us_inquiry_history_event.dart';
part 'mypage_contact_us_inquiry_history_state.dart';

/// A bloc that manages the state of a MypageContactUsInquiryHistory according to the event that is dispatched to it.
class MypageContactUsInquiryHistoryBloc extends Bloc<
    MypageContactUsInquiryHistoryEvent, MypageContactUsInquiryHistoryState> {
  MypageContactUsInquiryHistoryBloc(
      MypageContactUsInquiryHistoryState initialState)
      : super(initialState) {
    on<MypageContactUsInquiryHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MypageContactUsInquiryHistoryInitialEvent event,
    Emitter<MypageContactUsInquiryHistoryState> emit,
  ) async {
    emit(state.copyWith(
        mypageContactUsInquiryHistoryModelObj:
            state.mypageContactUsInquiryHistoryModelObj?.copyWith(
      userqueryItemList: fillUserqueryItemList(),
    )));
  }

  List<UserqueryItemModel> fillUserqueryItemList() {
    return List.generate(8, (index) => UserqueryItemModel());
  }
}
