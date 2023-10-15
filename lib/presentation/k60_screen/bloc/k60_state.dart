// ignore_for_file: must_be_immutable

part of 'k60_bloc.dart';

/// Represents the state of K60 in the application.
class K60State extends Equatable {
  K60State({
    this.idoneController,
    this.passwordoneController,
    this.k60ModelObj,
  });

  TextEditingController? idoneController;

  TextEditingController? passwordoneController;

  K60Model? k60ModelObj;

  @override
  List<Object?> get props => [
        idoneController,
        passwordoneController,
        k60ModelObj,
      ];
  K60State copyWith({
    TextEditingController? idoneController,
    TextEditingController? passwordoneController,
    K60Model? k60ModelObj,
  }) {
    return K60State(
      idoneController: idoneController ?? this.idoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      k60ModelObj: k60ModelObj ?? this.k60ModelObj,
    );
  }
}
