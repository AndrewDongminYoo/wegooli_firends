// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_bloc.dart';

/// Represents the state of MyPageContactUsInquiryHistory in the application.
class MyPageContactUsInquiryHistoryState extends Equatable {
  MyPageContactUsInquiryHistoryState(
      {this.mypageContactUsInquiryHistoryModelObj});

  MyPageContactUsInquiryHistoryModel? mypageContactUsInquiryHistoryModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsInquiryHistoryModelObj,
      ];
  MyPageContactUsInquiryHistoryState copyWith(
      {MyPageContactUsInquiryHistoryModel?
          mypageContactUsInquiryHistoryModelObj}) {
    return MyPageContactUsInquiryHistoryState(
      mypageContactUsInquiryHistoryModelObj:
          mypageContactUsInquiryHistoryModelObj ??
              this.mypageContactUsInquiryHistoryModelObj,
    );
  }
}
