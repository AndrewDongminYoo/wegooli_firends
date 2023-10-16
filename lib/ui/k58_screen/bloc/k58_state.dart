// ignore_for_file: must_be_immutable

part of 'k58_bloc.dart';

/// Represents the state of K58 in the application.
class K58State extends Equatable {
  K58State({this.k58ModelObj});

  K58Model? k58ModelObj;

  @override
  List<Object?> get props => [
        k58ModelObj,
      ];
  K58State copyWith({K58Model? k58ModelObj}) {
    return K58State(
      k58ModelObj: k58ModelObj ?? this.k58ModelObj,
    );
  }
}
