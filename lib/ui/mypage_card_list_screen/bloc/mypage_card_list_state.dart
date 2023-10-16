// ignore_for_file: must_be_immutable

part of 'mypage_card_list_bloc.dart';

/// Represents the state of MyPageCardList in the application.
class MyPageCardListState extends Equatable {
  MyPageCardListState({
    this.radioGroup = '',
    this.radioGroup1 = '',
    this.mypageCardListModelObj,
  });

  MyPageCardListModel? mypageCardListModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        mypageCardListModelObj,
      ];
  MyPageCardListState copyWith({
    String? radioGroup,
    String? radioGroup1,
    MyPageCardListModel? mypageCardListModelObj,
  }) {
    return MyPageCardListState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      mypageCardListModelObj:
          mypageCardListModelObj ?? this.mypageCardListModelObj,
    );
  }
}
