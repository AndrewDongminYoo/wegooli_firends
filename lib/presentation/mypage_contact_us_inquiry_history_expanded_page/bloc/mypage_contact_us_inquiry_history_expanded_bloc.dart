import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_expanded_page/models/mypage_contact_us_inquiry_history_expanded_model.dart';
part 'mypage_contact_us_inquiry_history_expanded_event.dart';
part 'mypage_contact_us_inquiry_history_expanded_state.dart';

/// A bloc that manages the state of a MypageContactUsInquiryHistoryExpanded according to the event that is dispatched to it.
class MypageContactUsInquiryHistoryExpandedBloc extends Bloc<
    MypageContactUsInquiryHistoryExpandedEvent,
    MypageContactUsInquiryHistoryExpandedState> {
  MypageContactUsInquiryHistoryExpandedBloc(
      MypageContactUsInquiryHistoryExpandedState initialState)
      : super(initialState) {
    on<MypageContactUsInquiryHistoryExpandedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MypageContactUsInquiryHistoryExpandedInitialEvent event,
    Emitter<MypageContactUsInquiryHistoryExpandedState> emit,
  ) async {}
}
