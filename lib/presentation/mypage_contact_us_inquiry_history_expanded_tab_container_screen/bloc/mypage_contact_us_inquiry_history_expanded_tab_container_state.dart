// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_tab_container_bloc.dart';

/// Represents the state of MypageContactUsInquiryHistoryExpandedTabContainer in the application.
class MypageContactUsInquiryHistoryExpandedTabContainerState extends Equatable {
  MypageContactUsInquiryHistoryExpandedTabContainerState(
      {this.mypageContactUsInquiryHistoryExpandedTabContainerModelObj});

  MypageContactUsInquiryHistoryExpandedTabContainerModel?
      mypageContactUsInquiryHistoryExpandedTabContainerModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsInquiryHistoryExpandedTabContainerModelObj,
      ];
  MypageContactUsInquiryHistoryExpandedTabContainerState copyWith(
      {MypageContactUsInquiryHistoryExpandedTabContainerModel?
          mypageContactUsInquiryHistoryExpandedTabContainerModelObj}) {
    return MypageContactUsInquiryHistoryExpandedTabContainerState(
      mypageContactUsInquiryHistoryExpandedTabContainerModelObj:
          mypageContactUsInquiryHistoryExpandedTabContainerModelObj ??
              this.mypageContactUsInquiryHistoryExpandedTabContainerModelObj,
    );
  }
}
