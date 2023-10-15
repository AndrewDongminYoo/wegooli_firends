// ignore_for_file: must_be_immutable

part of 'mypage_bloc.dart';

/// Represents the state of Mypage in the application.
class MypageState extends Equatable {
  MypageState({this.mypageModelObj});

  MypageModel? mypageModelObj;

  @override
  List<Object?> get props => [
        mypageModelObj,
      ];
  MypageState copyWith({MypageModel? mypageModelObj}) {
    return MypageState(
      mypageModelObj: mypageModelObj ?? this.mypageModelObj,
    );
  }
}
