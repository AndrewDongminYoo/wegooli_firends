// ignore_for_file: must_be_immutable

part of 'one8_bloc.dart';

/// Represents the state of One8 in the application.
class One8State extends Equatable {
  One8State({
    this.cardnumberoneController,
    this.expirationdateController,
    this.tfController,
    this.edittextController,
    this.one8ModelObj,
  });

  TextEditingController? cardnumberoneController;

  TextEditingController? expirationdateController;

  TextEditingController? tfController;

  TextEditingController? edittextController;

  One8Model? one8ModelObj;

  @override
  List<Object?> get props => [
        cardnumberoneController,
        expirationdateController,
        tfController,
        edittextController,
        one8ModelObj,
      ];
  One8State copyWith({
    TextEditingController? cardnumberoneController,
    TextEditingController? expirationdateController,
    TextEditingController? tfController,
    TextEditingController? edittextController,
    One8Model? one8ModelObj,
  }) {
    return One8State(
      cardnumberoneController:
          cardnumberoneController ?? this.cardnumberoneController,
      expirationdateController:
          expirationdateController ?? this.expirationdateController,
      tfController: tfController ?? this.tfController,
      edittextController: edittextController ?? this.edittextController,
      one8ModelObj: one8ModelObj ?? this.one8ModelObj,
    );
  }
}
