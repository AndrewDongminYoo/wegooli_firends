// ignore_for_file: must_be_immutable

part of 'k98_bloc.dart';

/// Represents the state of K98 in the application.
class K98State extends Equatable {
  K98State({this.k98ModelObj});

  K98Model? k98ModelObj;

  @override
  List<Object?> get props => [
        k98ModelObj,
      ];
  K98State copyWith({K98Model? k98ModelObj}) {
    return K98State(
      k98ModelObj: k98ModelObj ?? this.k98ModelObj,
    );
  }
}
