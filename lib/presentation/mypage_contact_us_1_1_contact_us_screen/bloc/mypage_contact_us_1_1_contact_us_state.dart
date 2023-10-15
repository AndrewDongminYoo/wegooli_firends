// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_1_1_contact_us_bloc.dart';

/// Represents the state of MypageContactUs11ContactUs in the application.
class MypageContactUs11ContactUsState extends Equatable {
  MypageContactUs11ContactUsState({
    this.groupSixtyFiveController,
    this.selectedDropDownValue,
    this.mypageContactUs11ContactUsModelObj,
  });

  TextEditingController? groupSixtyFiveController;

  SelectionPopupModel? selectedDropDownValue;

  MypageContactUs11ContactUsModel? mypageContactUs11ContactUsModelObj;

  @override
  List<Object?> get props => [
        groupSixtyFiveController,
        selectedDropDownValue,
        mypageContactUs11ContactUsModelObj,
      ];
  MypageContactUs11ContactUsState copyWith({
    TextEditingController? groupSixtyFiveController,
    SelectionPopupModel? selectedDropDownValue,
    MypageContactUs11ContactUsModel? mypageContactUs11ContactUsModelObj,
  }) {
    return MypageContactUs11ContactUsState(
      groupSixtyFiveController:
          groupSixtyFiveController ?? this.groupSixtyFiveController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      mypageContactUs11ContactUsModelObj: mypageContactUs11ContactUsModelObj ??
          this.mypageContactUs11ContactUsModelObj,
    );
  }
}
