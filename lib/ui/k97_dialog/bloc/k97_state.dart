// ignore_for_file: must_be_immutable

part of 'k97_bloc.dart';

/// Represents the state of K97 in the application.
class K97State extends Equatable {
  K97State({this.k97ModelObj});

  K97Model? k97ModelObj;

  @override
  List<Object?> get props => [
        k97ModelObj,
      ];
  K97State copyWith({K97Model? k97ModelObj}) {
    return K97State(
      k97ModelObj: k97ModelObj ?? this.k97ModelObj,
    );
  }
}
