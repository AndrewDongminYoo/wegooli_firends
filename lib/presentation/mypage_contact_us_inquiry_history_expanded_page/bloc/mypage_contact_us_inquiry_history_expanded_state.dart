// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_bloc.dart';

/// Represents the state of MyPageContactUsInquiryHistoryExpanded in the application.
class MyPageContactUsInquiryHistoryExpandedState extends Equatable {
  MyPageContactUsInquiryHistoryExpandedState(
      {this.mypageContactUsInquiryHistoryExpandedModelObj});

  MyPageContactUsInquiryHistoryExpandedModel?
      mypageContactUsInquiryHistoryExpandedModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsInquiryHistoryExpandedModelObj,
      ];
  MyPageContactUsInquiryHistoryExpandedState copyWith(
      {MyPageContactUsInquiryHistoryExpandedModel?
          mypageContactUsInquiryHistoryExpandedModelObj}) {
    return MyPageContactUsInquiryHistoryExpandedState(
      mypageContactUsInquiryHistoryExpandedModelObj:
          mypageContactUsInquiryHistoryExpandedModelObj ??
              this.mypageContactUsInquiryHistoryExpandedModelObj,
    );
  }
}
