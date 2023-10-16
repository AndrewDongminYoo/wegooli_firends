// ignore_for_file: must_be_immutable

part of 'two_bloc.dart';

/// Represents the state of Two in the application.
class TwoState extends Equatable {
  TwoState({
    this.cardnumberoneController,
    this.expirationdateController,
    this.zipcodeController,
    this.edittextController,
    this.twoModelObj,
  });

  TextEditingController? cardnumberoneController;

  TextEditingController? expirationdateController;

  TextEditingController? zipcodeController;

  TextEditingController? edittextController;

  TwoModel? twoModelObj;

  @override
  List<Object?> get props => [
        cardnumberoneController,
        expirationdateController,
        zipcodeController,
        edittextController,
        twoModelObj,
      ];
  TwoState copyWith({
    TextEditingController? cardnumberoneController,
    TextEditingController? expirationdateController,
    TextEditingController? zipcodeController,
    TextEditingController? edittextController,
    TwoModel? twoModelObj,
  }) {
    return TwoState(
      cardnumberoneController:
          cardnumberoneController ?? this.cardnumberoneController,
      expirationdateController:
          expirationdateController ?? this.expirationdateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      edittextController: edittextController ?? this.edittextController,
      twoModelObj: twoModelObj ?? this.twoModelObj,
    );
  }
}
