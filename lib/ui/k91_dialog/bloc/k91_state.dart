// ignore_for_file: must_be_immutable

part of 'k91_bloc.dart';

/// Represents the state of K91 in the application.
class K91State extends Equatable {
  K91State({this.k91ModelObj});

  K91Model? k91ModelObj;

  @override
  List<Object?> get props => [
        k91ModelObj,
      ];
  K91State copyWith({K91Model? k91ModelObj}) {
    return K91State(
      k91ModelObj: k91ModelObj ?? this.k91ModelObj,
    );
  }
}
