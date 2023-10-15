// ignore_for_file: must_be_immutable

part of 'two2_bloc.dart';

/// Represents the state of Two2 in the application.
class Two2State extends Equatable {
  Two2State({
    this.selectedDropDownValue,
    this.two2ModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  Two2Model? two2ModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        two2ModelObj,
      ];
  Two2State copyWith({
    SelectionPopupModel? selectedDropDownValue,
    Two2Model? two2ModelObj,
  }) {
    return Two2State(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      two2ModelObj: two2ModelObj ?? this.two2ModelObj,
    );
  }
}
