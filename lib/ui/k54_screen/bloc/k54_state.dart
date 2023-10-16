// ignore_for_file: must_be_immutable

part of 'k54_bloc.dart';

/// Represents the state of K54 in the application.
class K54State extends Equatable {
  K54State({
    this.licensenumberController,
    this.tfController,
    this.licensenumberController1,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.k54ModelObj,
  });

  TextEditingController? licensenumberController;

  TextEditingController? tfController;

  TextEditingController? licensenumberController1;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  K54Model? k54ModelObj;

  @override
  List<Object?> get props => [
        licensenumberController,
        tfController,
        licensenumberController1,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        k54ModelObj,
      ];
  K54State copyWith({
    TextEditingController? licensenumberController,
    TextEditingController? tfController,
    TextEditingController? licensenumberController1,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    K54Model? k54ModelObj,
  }) {
    return K54State(
      licensenumberController:
          licensenumberController ?? this.licensenumberController,
      tfController: tfController ?? this.tfController,
      licensenumberController1:
          licensenumberController1 ?? this.licensenumberController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      k54ModelObj: k54ModelObj ?? this.k54ModelObj,
    );
  }
}
