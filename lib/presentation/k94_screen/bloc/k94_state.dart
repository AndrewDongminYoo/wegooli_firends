// ignore_for_file: must_be_immutable

part of 'k94_bloc.dart';

/// Represents the state of K94 in the application.
class K94State extends Equatable {
  K94State({this.k94ModelObj});

  K94Model? k94ModelObj;

  @override
  List<Object?> get props => [
        k94ModelObj,
      ];
  K94State copyWith({K94Model? k94ModelObj}) {
    return K94State(
      k94ModelObj: k94ModelObj ?? this.k94ModelObj,
    );
  }
}
