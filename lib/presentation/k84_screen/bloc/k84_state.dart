// ignore_for_file: must_be_immutable

part of 'k84_bloc.dart';

/// Represents the state of K84 in the application.
class K84State extends Equatable {
  K84State({this.k84ModelObj});

  K84Model? k84ModelObj;

  @override
  List<Object?> get props => [
        k84ModelObj,
      ];
  K84State copyWith({K84Model? k84ModelObj}) {
    return K84State(
      k84ModelObj: k84ModelObj ?? this.k84ModelObj,
    );
  }
}
