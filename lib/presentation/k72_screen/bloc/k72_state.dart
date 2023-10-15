// ignore_for_file: must_be_immutable

part of 'k72_bloc.dart';

/// Represents the state of K72 in the application.
class K72State extends Equatable {
  K72State({this.k72ModelObj});

  K72Model? k72ModelObj;

  @override
  List<Object?> get props => [
        k72ModelObj,
      ];
  K72State copyWith({K72Model? k72ModelObj}) {
    return K72State(
      k72ModelObj: k72ModelObj ?? this.k72ModelObj,
    );
  }
}
