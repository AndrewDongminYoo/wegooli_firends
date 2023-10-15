// ignore_for_file: must_be_immutable

part of 'k93_bloc.dart';

/// Represents the state of K93 in the application.
class K93State extends Equatable {
  K93State({this.k93ModelObj});

  K93Model? k93ModelObj;

  @override
  List<Object?> get props => [
        k93ModelObj,
      ];
  K93State copyWith({K93Model? k93ModelObj}) {
    return K93State(
      k93ModelObj: k93ModelObj ?? this.k93ModelObj,
    );
  }
}
