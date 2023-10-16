// ignore_for_file: must_be_immutable

part of 'mypage_notices_bloc.dart';

/// Represents the state of MyPageNotices in the application.
class MyPageNoticesState extends Equatable {
  MyPageNoticesState({this.mypageNoticesModelObj});

  MyPageNoticesModel? mypageNoticesModelObj;

  @override
  List<Object?> get props => [
        mypageNoticesModelObj,
      ];
  MyPageNoticesState copyWith({MyPageNoticesModel? mypageNoticesModelObj}) {
    return MyPageNoticesState(
      mypageNoticesModelObj:
          mypageNoticesModelObj ?? this.mypageNoticesModelObj,
    );
  }
}
