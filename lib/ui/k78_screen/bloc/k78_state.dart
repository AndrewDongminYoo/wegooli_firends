// ignore_for_file: must_be_immutable

part of 'k78_bloc.dart';

/// Represents the state of K78 in the application.
class K78State extends Equatable {
  K78State({this.k78ModelObj});

  K78Model? k78ModelObj;

  @override
  List<Object?> get props => [
        k78ModelObj,
      ];
  K78State copyWith({K78Model? k78ModelObj}) {
    return K78State(
      k78ModelObj: k78ModelObj ?? this.k78ModelObj,
    );
  }
}
