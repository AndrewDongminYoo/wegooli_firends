// ignore_for_file: must_be_immutable

part of 'k83_bloc.dart';

/// Represents the state of K83 in the application.
class K83State extends Equatable {
  K83State({this.k83ModelObj});

  K83Model? k83ModelObj;

  @override
  List<Object?> get props => [
        k83ModelObj,
      ];
  K83State copyWith({K83Model? k83ModelObj}) {
    return K83State(
      k83ModelObj: k83ModelObj ?? this.k83ModelObj,
    );
  }
}
