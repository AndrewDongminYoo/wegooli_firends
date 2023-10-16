import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_expanded_page/models/mypage_contact_us_inquiry_history_expanded_model.dart';
part 'mypage_contact_us_inquiry_history_expanded_event.dart';
part 'mypage_contact_us_inquiry_history_expanded_state.dart';

/// A bloc that manages the state of a MyPageContactUsInquiryHistoryExpanded according to the event that is dispatched to it.
class MyPageContactUsInquiryHistoryExpandedBloc extends Bloc<
    MyPageContactUsInquiryHistoryExpandedEvent,
    MyPageContactUsInquiryHistoryExpandedState> {
  MyPageContactUsInquiryHistoryExpandedBloc(
      MyPageContactUsInquiryHistoryExpandedState initialState)
      : super(initialState) {
    on<MyPageContactUsInquiryHistoryExpandedInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageContactUsInquiryHistoryExpandedInitialEvent event,
    Emitter<MyPageContactUsInquiryHistoryExpandedState> emit,
  ) async {}
}
