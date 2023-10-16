// ignore_for_file: must_be_immutable

part of 'three1_bloc.dart';

/// Represents the state of Three1 in the application.
class Three1State extends Equatable {
  Three1State({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.three1ModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  Three1Model? three1ModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        three1ModelObj,
      ];
  Three1State copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    Three1Model? three1ModelObj,
  }) {
    return Three1State(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      three1ModelObj: three1ModelObj ?? this.three1ModelObj,
    );
  }
}
