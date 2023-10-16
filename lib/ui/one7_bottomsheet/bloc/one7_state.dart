// ignore_for_file: must_be_immutable

part of 'one7_bloc.dart';

/// Represents the state of One7 in the application.
class One7State extends Equatable {
  One7State({
    this.selectedDropDownValue,
    this.one7ModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  One7Model? one7ModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        one7ModelObj,
      ];
  One7State copyWith({
    SelectionPopupModel? selectedDropDownValue,
    One7Model? one7ModelObj,
  }) {
    return One7State(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      one7ModelObj: one7ModelObj ?? this.one7ModelObj,
    );
  }
}
