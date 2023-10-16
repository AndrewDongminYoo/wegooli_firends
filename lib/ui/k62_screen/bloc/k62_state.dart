// ignore_for_file: must_be_immutable

part of 'k62_bloc.dart';

/// Represents the state of K62 in the application.
class K62State extends Equatable {
  K62State({
    this.nameinputoneController,
    this.tfController,
    this.phonenumberoneController,
    this.sendverificatioController,
    this.k62ModelObj,
  });

  TextEditingController? nameinputoneController;

  TextEditingController? tfController;

  TextEditingController? phonenumberoneController;

  TextEditingController? sendverificatioController;

  K62Model? k62ModelObj;

  @override
  List<Object?> get props => [
        nameinputoneController,
        tfController,
        phonenumberoneController,
        sendverificatioController,
        k62ModelObj,
      ];
  K62State copyWith({
    TextEditingController? nameinputoneController,
    TextEditingController? tfController,
    TextEditingController? phonenumberoneController,
    TextEditingController? sendverificatioController,
    K62Model? k62ModelObj,
  }) {
    return K62State(
      nameinputoneController:
          nameinputoneController ?? this.nameinputoneController,
      tfController: tfController ?? this.tfController,
      phonenumberoneController:
          phonenumberoneController ?? this.phonenumberoneController,
      sendverificatioController:
          sendverificatioController ?? this.sendverificatioController,
      k62ModelObj: k62ModelObj ?? this.k62ModelObj,
    );
  }
}
