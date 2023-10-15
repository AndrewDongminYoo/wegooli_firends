// ignore_for_file: must_be_immutable

part of 'k64_bloc.dart';

/// Represents the state of K64 in the application.
class K64State extends Equatable {
  K64State({
    this.licensenumberonController,
    this.expirationdateoController,
    this.issuancedateonlController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.k64ModelObj,
  });

  TextEditingController? licensenumberonController;

  TextEditingController? expirationdateoController;

  TextEditingController? issuancedateonlController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  K64Model? k64ModelObj;

  @override
  List<Object?> get props => [
        licensenumberonController,
        expirationdateoController,
        issuancedateonlController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        k64ModelObj,
      ];
  K64State copyWith({
    TextEditingController? licensenumberonController,
    TextEditingController? expirationdateoController,
    TextEditingController? issuancedateonlController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    K64Model? k64ModelObj,
  }) {
    return K64State(
      licensenumberonController:
          licensenumberonController ?? this.licensenumberonController,
      expirationdateoController:
          expirationdateoController ?? this.expirationdateoController,
      issuancedateonlController:
          issuancedateonlController ?? this.issuancedateonlController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      k64ModelObj: k64ModelObj ?? this.k64ModelObj,
    );
  }
}
