// ignore_for_file: must_be_immutable

part of 'mypage_card_list_bloc.dart';

/// Represents the state of MypageCardList in the application.
class MypageCardListState extends Equatable {
  MypageCardListState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.mypageCardListModelObj,
  });

  MypageCardListModel? mypageCardListModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        mypageCardListModelObj,
      ];
  MypageCardListState copyWith({
    String? radioGroup,
    String? radioGroup1,
    MypageCardListModel? mypageCardListModelObj,
  }) {
    return MypageCardListState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      mypageCardListModelObj:
          mypageCardListModelObj ?? this.mypageCardListModelObj,
    );
  }
}
