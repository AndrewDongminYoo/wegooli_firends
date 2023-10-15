// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_bloc.dart';

/// Represents the state of MypageContactUsInquiryHistoryExpanded in the application.
class MypageContactUsInquiryHistoryExpandedState extends Equatable {
  MypageContactUsInquiryHistoryExpandedState(
      {this.mypageContactUsInquiryHistoryExpandedModelObj});

  MypageContactUsInquiryHistoryExpandedModel?
      mypageContactUsInquiryHistoryExpandedModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsInquiryHistoryExpandedModelObj,
      ];
  MypageContactUsInquiryHistoryExpandedState copyWith(
      {MypageContactUsInquiryHistoryExpandedModel?
          mypageContactUsInquiryHistoryExpandedModelObj}) {
    return MypageContactUsInquiryHistoryExpandedState(
      mypageContactUsInquiryHistoryExpandedModelObj:
          mypageContactUsInquiryHistoryExpandedModelObj ??
              this.mypageContactUsInquiryHistoryExpandedModelObj,
    );
  }
}
