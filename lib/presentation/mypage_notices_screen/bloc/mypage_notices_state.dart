// ignore_for_file: must_be_immutable

part of 'mypage_notices_bloc.dart';

/// Represents the state of MypageNotices in the application.
class MypageNoticesState extends Equatable {
  MypageNoticesState({this.mypageNoticesModelObj});

  MypageNoticesModel? mypageNoticesModelObj;

  @override
  List<Object?> get props => [
        mypageNoticesModelObj,
      ];
  MypageNoticesState copyWith({MypageNoticesModel? mypageNoticesModelObj}) {
    return MypageNoticesState(
      mypageNoticesModelObj:
          mypageNoticesModelObj ?? this.mypageNoticesModelObj,
    );
  }
}
