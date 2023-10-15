// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_bloc.dart';

/// Represents the state of MypageSubscribeInfo in the application.
class MypageSubscribeInfoState extends Equatable {
  MypageSubscribeInfoState({this.mypageSubscribeInfoModelObj});

  MypageSubscribeInfoModel? mypageSubscribeInfoModelObj;

  @override
  List<Object?> get props => [
        mypageSubscribeInfoModelObj,
      ];
  MypageSubscribeInfoState copyWith(
      {MypageSubscribeInfoModel? mypageSubscribeInfoModelObj}) {
    return MypageSubscribeInfoState(
      mypageSubscribeInfoModelObj:
          mypageSubscribeInfoModelObj ?? this.mypageSubscribeInfoModelObj,
    );
  }
}
