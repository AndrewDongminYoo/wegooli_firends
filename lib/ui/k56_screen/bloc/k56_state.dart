// ignore_for_file: must_be_immutable

part of 'k56_bloc.dart';

/// Represents the state of K56 in the application.
class K56State extends Equatable {
  K56State({
    this.cardnumberoneController,
    this.expirationdateController,
    this.zipcodeController,
    this.tf = false,
    this.k56ModelObj,
  });

  TextEditingController? cardnumberoneController;

  TextEditingController? expirationdateController;

  TextEditingController? zipcodeController;

  K56Model? k56ModelObj;

  bool tf;

  @override
  List<Object?> get props => [
        cardnumberoneController,
        expirationdateController,
        zipcodeController,
        tf,
        k56ModelObj,
      ];
  K56State copyWith({
    TextEditingController? cardnumberoneController,
    TextEditingController? expirationdateController,
    TextEditingController? zipcodeController,
    bool? tf,
    K56Model? k56ModelObj,
  }) {
    return K56State(
      cardnumberoneController:
          cardnumberoneController ?? this.cardnumberoneController,
      expirationdateController:
          expirationdateController ?? this.expirationdateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      tf: tf ?? this.tf,
      k56ModelObj: k56ModelObj ?? this.k56ModelObj,
    );
  }
}
