// ignore_for_file: must_be_immutable

part of 'mypage_bloc.dart';

/// Represents the state of MyPage in the application.
class MyPageState extends Equatable {
  MyPageState({this.mypageModelObj});

  MyPageModel? mypageModelObj;

  @override
  List<Object?> get props => [
        mypageModelObj,
      ];
  MyPageState copyWith({MyPageModel? mypageModelObj}) {
    return MyPageState(
      mypageModelObj: mypageModelObj ?? this.mypageModelObj,
    );
  }
}
