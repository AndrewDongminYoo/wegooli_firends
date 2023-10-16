// ignore_for_file: must_be_immutable

part of 'k55_bloc.dart';

/// Represents the state of K55 in the application.
class K55State extends Equatable {
  K55State({
    this.cardnumberoneController,
    this.expirationdateController,
    this.zipcodeController,
    this.edittextController,
    this.selectedDropDownValue,
    this.k55ModelObj,
  });

  TextEditingController? cardnumberoneController;

  TextEditingController? expirationdateController;

  TextEditingController? zipcodeController;

  TextEditingController? edittextController;

  SelectionPopupModel? selectedDropDownValue;

  K55Model? k55ModelObj;

  @override
  List<Object?> get props => [
        cardnumberoneController,
        expirationdateController,
        zipcodeController,
        edittextController,
        selectedDropDownValue,
        k55ModelObj,
      ];
  K55State copyWith({
    TextEditingController? cardnumberoneController,
    TextEditingController? expirationdateController,
    TextEditingController? zipcodeController,
    TextEditingController? edittextController,
    SelectionPopupModel? selectedDropDownValue,
    K55Model? k55ModelObj,
  }) {
    return K55State(
      cardnumberoneController:
          cardnumberoneController ?? this.cardnumberoneController,
      expirationdateController:
          expirationdateController ?? this.expirationdateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      edittextController: edittextController ?? this.edittextController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k55ModelObj: k55ModelObj ?? this.k55ModelObj,
    );
  }
}
