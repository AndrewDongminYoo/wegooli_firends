// ignore_for_file: must_be_immutable

part of 'mypage_notices_one_bloc.dart';

/// Represents the state of MyPageNoticesOne in the application.
class MyPageNoticesOneState extends Equatable {
  MyPageNoticesOneState({this.mypageNoticesOneModelObj});

  MyPageNoticesOneModel? mypageNoticesOneModelObj;

  @override
  List<Object?> get props => [
        mypageNoticesOneModelObj,
      ];
  MyPageNoticesOneState copyWith(
      {MyPageNoticesOneModel? mypageNoticesOneModelObj}) {
    return MyPageNoticesOneState(
      mypageNoticesOneModelObj:
          mypageNoticesOneModelObj ?? this.mypageNoticesOneModelObj,
    );
  }
}
