// ignore_for_file: must_be_immutable

part of 'mypage_notices_one_bloc.dart';

/// Represents the state of MypageNoticesOne in the application.
class MypageNoticesOneState extends Equatable {
  MypageNoticesOneState({this.mypageNoticesOneModelObj});

  MypageNoticesOneModel? mypageNoticesOneModelObj;

  @override
  List<Object?> get props => [
        mypageNoticesOneModelObj,
      ];
  MypageNoticesOneState copyWith(
      {MypageNoticesOneModel? mypageNoticesOneModelObj}) {
    return MypageNoticesOneState(
      mypageNoticesOneModelObj:
          mypageNoticesOneModelObj ?? this.mypageNoticesOneModelObj,
    );
  }
}
