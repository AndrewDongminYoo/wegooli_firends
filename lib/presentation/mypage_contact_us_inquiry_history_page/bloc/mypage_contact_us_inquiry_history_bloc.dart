// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_contact_us_inquiry_history_page/models/mypage_contact_us_inquiry_history_model.dart';
import '/presentation/mypage_contact_us_inquiry_history_page/models/userquery_item_model.dart';

part 'mypage_contact_us_inquiry_history_event.dart';
part 'mypage_contact_us_inquiry_history_state.dart';

/// A bloc that manages the state of a MyPageContactUsInquiryHistory according to the event that is dispatched to it.
class MyPageContactUsInquiryHistoryBloc extends Bloc<
    MyPageContactUsInquiryHistoryEvent, MyPageContactUsInquiryHistoryState> {
  MyPageContactUsInquiryHistoryBloc(
      MyPageContactUsInquiryHistoryState initialState)
      : super(initialState) {
    on<MyPageContactUsInquiryHistoryInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageContactUsInquiryHistoryInitialEvent event,
    Emitter<MyPageContactUsInquiryHistoryState> emit,
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
