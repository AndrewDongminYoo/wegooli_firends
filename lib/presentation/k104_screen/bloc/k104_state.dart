// ignore_for_file: must_be_immutable

part of 'k104_bloc.dart';

/// Represents the state of K104 in the application.
class K104State extends Equatable {
  K104State({
    this.cardnumberoneController,
    this.expirationdateController,
    this.zipcodeController,
    this.edittextController,
    this.k104ModelObj,
  });

  TextEditingController? cardnumberoneController;

  TextEditingController? expirationdateController;

  TextEditingController? zipcodeController;

  TextEditingController? edittextController;

  K104Model? k104ModelObj;

  @override
  List<Object?> get props => [
        cardnumberoneController,
        expirationdateController,
        zipcodeController,
        edittextController,
        k104ModelObj,
      ];
  K104State copyWith({
    TextEditingController? cardnumberoneController,
    TextEditingController? expirationdateController,
    TextEditingController? zipcodeController,
    TextEditingController? edittextController,
    K104Model? k104ModelObj,
  }) {
    return K104State(
      cardnumberoneController:
          cardnumberoneController ?? this.cardnumberoneController,
      expirationdateController:
          expirationdateController ?? this.expirationdateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      edittextController: edittextController ?? this.edittextController,
      k104ModelObj: k104ModelObj ?? this.k104ModelObj,
    );
  }
}
