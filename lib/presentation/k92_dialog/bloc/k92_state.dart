// ignore_for_file: must_be_immutable

part of 'k92_bloc.dart';

/// Represents the state of K92 in the application.
class K92State extends Equatable {
  K92State({
    this.selectedDropDownValue,
    this.k92ModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  K92Model? k92ModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        k92ModelObj,
      ];
  K92State copyWith({
    SelectionPopupModel? selectedDropDownValue,
    K92Model? k92ModelObj,
  }) {
    return K92State(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k92ModelObj: k92ModelObj ?? this.k92ModelObj,
    );
  }
}
