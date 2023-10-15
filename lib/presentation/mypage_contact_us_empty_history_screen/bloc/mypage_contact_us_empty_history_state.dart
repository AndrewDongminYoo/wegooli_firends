// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_empty_history_bloc.dart';

/// Represents the state of MypageContactUsEmptyHistory in the application.
class MypageContactUsEmptyHistoryState extends Equatable {
  MypageContactUsEmptyHistoryState({this.mypageContactUsEmptyHistoryModelObj});

  MypageContactUsEmptyHistoryModel? mypageContactUsEmptyHistoryModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsEmptyHistoryModelObj,
      ];
  MypageContactUsEmptyHistoryState copyWith(
      {MypageContactUsEmptyHistoryModel? mypageContactUsEmptyHistoryModelObj}) {
    return MypageContactUsEmptyHistoryState(
      mypageContactUsEmptyHistoryModelObj:
          mypageContactUsEmptyHistoryModelObj ??
              this.mypageContactUsEmptyHistoryModelObj,
    );
  }
}
