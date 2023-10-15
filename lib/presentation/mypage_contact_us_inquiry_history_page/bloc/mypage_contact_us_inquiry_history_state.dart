// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_bloc.dart';

/// Represents the state of MypageContactUsInquiryHistory in the application.
class MypageContactUsInquiryHistoryState extends Equatable {
  MypageContactUsInquiryHistoryState(
      {this.mypageContactUsInquiryHistoryModelObj});

  MypageContactUsInquiryHistoryModel? mypageContactUsInquiryHistoryModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsInquiryHistoryModelObj,
      ];
  MypageContactUsInquiryHistoryState copyWith(
      {MypageContactUsInquiryHistoryModel?
          mypageContactUsInquiryHistoryModelObj}) {
    return MypageContactUsInquiryHistoryState(
      mypageContactUsInquiryHistoryModelObj:
          mypageContactUsInquiryHistoryModelObj ??
              this.mypageContactUsInquiryHistoryModelObj,
    );
  }
}
