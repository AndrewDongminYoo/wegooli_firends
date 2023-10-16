// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_1_1_contact_us_bloc.dart';

/// Represents the state of MyPageContactUs11ContactUs in the application.
class MyPageContactUs11ContactUsState extends Equatable {
  MyPageContactUs11ContactUsState({
    this.groupSixtyFiveController,
    this.selectedDropDownValue,
    this.mypageContactUs11ContactUsModelObj,
  });

  TextEditingController? groupSixtyFiveController;

  SelectionPopupModel? selectedDropDownValue;

  MyPageContactUs11ContactUsModel? mypageContactUs11ContactUsModelObj;

  @override
  List<Object?> get props => [
        groupSixtyFiveController,
        selectedDropDownValue,
        mypageContactUs11ContactUsModelObj,
      ];
  MyPageContactUs11ContactUsState copyWith({
    TextEditingController? groupSixtyFiveController,
    SelectionPopupModel? selectedDropDownValue,
    MyPageContactUs11ContactUsModel? mypageContactUs11ContactUsModelObj,
  }) {
    return MyPageContactUs11ContactUsState(
      groupSixtyFiveController:
          groupSixtyFiveController ?? this.groupSixtyFiveController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      mypageContactUs11ContactUsModelObj: mypageContactUs11ContactUsModelObj ??
          this.mypageContactUs11ContactUsModelObj,
    );
  }
}
