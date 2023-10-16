// ignore_for_file: must_be_immutable

part of 'mypage_notices_no_notice_bloc.dart';

/// Represents the state of MyPageNoticesNoNotice in the application.
class MyPageNoticesNoNoticeState extends Equatable {
  MyPageNoticesNoNoticeState({this.mypageNoticesNoNoticeModelObj});

  MyPageNoticesNoNoticeModel? mypageNoticesNoNoticeModelObj;

  @override
  List<Object?> get props => [
        mypageNoticesNoNoticeModelObj,
      ];
  MyPageNoticesNoNoticeState copyWith(
      {MyPageNoticesNoNoticeModel? mypageNoticesNoNoticeModelObj}) {
    return MyPageNoticesNoNoticeState(
      mypageNoticesNoNoticeModelObj:
          mypageNoticesNoNoticeModelObj ?? this.mypageNoticesNoNoticeModelObj,
    );
  }
}
