// ignore_for_file: must_be_immutable

part of 'one3_bloc.dart';

/// Represents the state of One3 in the application.
class One3State extends Equatable {
  One3State({
    this.inputoneController,
    this.one3ModelObj,
  });

  TextEditingController? inputoneController;

  One3Model? one3ModelObj;

  @override
  List<Object?> get props => [
        inputoneController,
        one3ModelObj,
      ];
  One3State copyWith({
    TextEditingController? inputoneController,
    One3Model? one3ModelObj,
  }) {
    return One3State(
      inputoneController: inputoneController ?? this.inputoneController,
      one3ModelObj: one3ModelObj ?? this.one3ModelObj,
    );
  }
}
