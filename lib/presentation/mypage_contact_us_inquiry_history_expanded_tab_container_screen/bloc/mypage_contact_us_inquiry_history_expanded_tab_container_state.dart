// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_tab_container_bloc.dart';

/// Represents the state of MyPageContactUsInquiryHistoryExpandedTabContainer in the application.
class MyPageContactUsInquiryHistoryExpandedTabContainerState extends Equatable {
  MyPageContactUsInquiryHistoryExpandedTabContainerState(
      {this.mypageContactUsInquiryHistoryExpandedTabContainerModelObj});

  MyPageContactUsInquiryHistoryExpandedTabContainerModel?
      mypageContactUsInquiryHistoryExpandedTabContainerModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsInquiryHistoryExpandedTabContainerModelObj,
      ];
  MyPageContactUsInquiryHistoryExpandedTabContainerState copyWith(
      {MyPageContactUsInquiryHistoryExpandedTabContainerModel?
          mypageContactUsInquiryHistoryExpandedTabContainerModelObj}) {
    return MyPageContactUsInquiryHistoryExpandedTabContainerState(
      mypageContactUsInquiryHistoryExpandedTabContainerModelObj:
          mypageContactUsInquiryHistoryExpandedTabContainerModelObj ??
              this.mypageContactUsInquiryHistoryExpandedTabContainerModelObj,
    );
  }
}
