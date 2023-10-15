// ignore_for_file: must_be_immutable

part of 'k112_bloc.dart';

/// Represents the state of K112 in the application.
class K112State extends Equatable {
  K112State({this.k112ModelObj});

  K112Model? k112ModelObj;

  @override
  List<Object?> get props => [
        k112ModelObj,
      ];
  K112State copyWith({K112Model? k112ModelObj}) {
    return K112State(
      k112ModelObj: k112ModelObj ?? this.k112ModelObj,
    );
  }
}
