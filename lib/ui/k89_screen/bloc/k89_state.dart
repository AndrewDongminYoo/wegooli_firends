// ignore_for_file: must_be_immutable

part of 'k89_bloc.dart';

/// Represents the state of K89 in the application.
class K89State extends Equatable {
  K89State({
    this.radioGroup = '',
    this.radioGroup1 = '',
    this.k89ModelObj,
  });

  K89Model? k89ModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        k89ModelObj,
      ];
  K89State copyWith({
    String? radioGroup,
    String? radioGroup1,
    K89Model? k89ModelObj,
  }) {
    return K89State(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      k89ModelObj: k89ModelObj ?? this.k89ModelObj,
    );
  }
}
