// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_bloc.dart';

/// Represents the state of MyPageSubscribeInfo in the application.
class MyPageSubscribeInfoState extends Equatable {
  MyPageSubscribeInfoState({this.mypageSubscribeInfoModelObj});

  MyPageSubscribeInfoModel? mypageSubscribeInfoModelObj;

  @override
  List<Object?> get props => [
        mypageSubscribeInfoModelObj,
      ];
  MyPageSubscribeInfoState copyWith(
      {MyPageSubscribeInfoModel? mypageSubscribeInfoModelObj}) {
    return MyPageSubscribeInfoState(
      mypageSubscribeInfoModelObj:
          mypageSubscribeInfoModelObj ?? this.mypageSubscribeInfoModelObj,
    );
  }
}
