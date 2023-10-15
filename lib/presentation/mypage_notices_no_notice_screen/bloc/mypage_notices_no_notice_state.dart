// ignore_for_file: must_be_immutable

part of 'mypage_notices_no_notice_bloc.dart';

/// Represents the state of MypageNoticesNoNotice in the application.
class MypageNoticesNoNoticeState extends Equatable {
  MypageNoticesNoNoticeState({this.mypageNoticesNoNoticeModelObj});

  MypageNoticesNoNoticeModel? mypageNoticesNoNoticeModelObj;

  @override
  List<Object?> get props => [
        mypageNoticesNoNoticeModelObj,
      ];
  MypageNoticesNoNoticeState copyWith(
      {MypageNoticesNoNoticeModel? mypageNoticesNoNoticeModelObj}) {
    return MypageNoticesNoNoticeState(
      mypageNoticesNoNoticeModelObj:
          mypageNoticesNoNoticeModelObj ?? this.mypageNoticesNoNoticeModelObj,
    );
  }
}
