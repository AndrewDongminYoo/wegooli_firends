// ignore_for_file: must_be_immutable

part of 'k87_bloc.dart';

/// Represents the state of K87 in the application.
class K87State extends Equatable {
  K87State({this.k87ModelObj});

  K87Model? k87ModelObj;

  @override
  List<Object?> get props => [
        k87ModelObj,
      ];
  K87State copyWith({K87Model? k87ModelObj}) {
    return K87State(
      k87ModelObj: k87ModelObj ?? this.k87ModelObj,
    );
  }
}
