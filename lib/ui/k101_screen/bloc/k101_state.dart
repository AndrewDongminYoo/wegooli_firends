// ignore_for_file: must_be_immutable

part of 'k101_bloc.dart';

/// Represents the state of K101 in the application.
class K101State extends Equatable {
  K101State({this.k101ModelObj});

  K101Model? k101ModelObj;

  @override
  List<Object?> get props => [
        k101ModelObj,
      ];
  K101State copyWith({K101Model? k101ModelObj}) {
    return K101State(
      k101ModelObj: k101ModelObj ?? this.k101ModelObj,
    );
  }
}
