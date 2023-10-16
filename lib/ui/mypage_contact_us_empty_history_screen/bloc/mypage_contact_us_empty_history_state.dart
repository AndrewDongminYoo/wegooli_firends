// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_empty_history_bloc.dart';

/// Represents the state of MyPageContactUsEmptyHistory in the application.
class MyPageContactUsEmptyHistoryState extends Equatable {
  MyPageContactUsEmptyHistoryState({this.mypageContactUsEmptyHistoryModelObj});

  MyPageContactUsEmptyHistoryModel? mypageContactUsEmptyHistoryModelObj;

  @override
  List<Object?> get props => [
        mypageContactUsEmptyHistoryModelObj,
      ];
  MyPageContactUsEmptyHistoryState copyWith(
      {MyPageContactUsEmptyHistoryModel? mypageContactUsEmptyHistoryModelObj}) {
    return MyPageContactUsEmptyHistoryState(
      mypageContactUsEmptyHistoryModelObj:
          mypageContactUsEmptyHistoryModelObj ??
              this.mypageContactUsEmptyHistoryModelObj,
    );
  }
}
