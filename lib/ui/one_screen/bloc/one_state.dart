// ignore_for_file: must_be_immutable

part of 'one_bloc.dart';

/// Represents the state of One in the application.
class OneState extends Equatable {
  OneState({
    this.nameinputoneController,
    this.dateformatoneController,
    this.settingsController,
    this.phonenumberoneController,
    this.oneModelObj,
  });

  TextEditingController? nameinputoneController;

  TextEditingController? dateformatoneController;

  TextEditingController? settingsController;

  TextEditingController? phonenumberoneController;

  OneModel? oneModelObj;

  @override
  List<Object?> get props => [
        nameinputoneController,
        dateformatoneController,
        settingsController,
        phonenumberoneController,
        oneModelObj,
      ];
  OneState copyWith({
    TextEditingController? nameinputoneController,
    TextEditingController? dateformatoneController,
    TextEditingController? settingsController,
    TextEditingController? phonenumberoneController,
    OneModel? oneModelObj,
  }) {
    return OneState(
      nameinputoneController:
          nameinputoneController ?? this.nameinputoneController,
      dateformatoneController:
          dateformatoneController ?? this.dateformatoneController,
      settingsController: settingsController ?? this.settingsController,
      phonenumberoneController:
          phonenumberoneController ?? this.phonenumberoneController,
      oneModelObj: oneModelObj ?? this.oneModelObj,
    );
  }
}
