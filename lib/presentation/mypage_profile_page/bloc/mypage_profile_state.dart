// ignore_for_file: must_be_immutable

part of 'mypage_profile_bloc.dart';

/// Represents the state of MypageProfile in the application.
class MypageProfileState extends Equatable {
  MypageProfileState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.mypageProfileModelObj,
  });

  MypageProfileModel? mypageProfileModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        mypageProfileModelObj,
      ];
  MypageProfileState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    MypageProfileModel? mypageProfileModelObj,
  }) {
    return MypageProfileState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      mypageProfileModelObj:
          mypageProfileModelObj ?? this.mypageProfileModelObj,
    );
  }
}
