// ignore_for_file: must_be_immutable

part of 'k65_bloc.dart';

/// Represents the state of K65 in the application.
class K65State extends Equatable {
  K65State({
    this.cardnumberoneController,
    this.expirationdateController,
    this.zipcodeController,
    this.edittextController,
    this.k65ModelObj,
  });

  TextEditingController? cardnumberoneController;

  TextEditingController? expirationdateController;

  TextEditingController? zipcodeController;

  TextEditingController? edittextController;

  K65Model? k65ModelObj;

  @override
  List<Object?> get props => [
        cardnumberoneController,
        expirationdateController,
        zipcodeController,
        edittextController,
        k65ModelObj,
      ];
  K65State copyWith({
    TextEditingController? cardnumberoneController,
    TextEditingController? expirationdateController,
    TextEditingController? zipcodeController,
    TextEditingController? edittextController,
    K65Model? k65ModelObj,
  }) {
    return K65State(
      cardnumberoneController:
          cardnumberoneController ?? this.cardnumberoneController,
      expirationdateController:
          expirationdateController ?? this.expirationdateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      edittextController: edittextController ?? this.edittextController,
      k65ModelObj: k65ModelObj ?? this.k65ModelObj,
    );
  }
}
