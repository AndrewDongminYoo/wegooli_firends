// ignore_for_file: must_be_immutable

part of 'k102_bloc.dart';

/// Represents the state of K102 in the application.
class K102State extends Equatable {
  K102State({
    this.radioGroup = '',
    this.radioGroup1 = '',
    this.k102ModelObj,
  });

  K102Model? k102ModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        k102ModelObj,
      ];
  K102State copyWith({
    String? radioGroup,
    String? radioGroup1,
    K102Model? k102ModelObj,
  }) {
    return K102State(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      k102ModelObj: k102ModelObj ?? this.k102ModelObj,
    );
  }
}
