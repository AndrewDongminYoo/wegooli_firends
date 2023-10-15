// ignore_for_file: must_be_immutable

part of 'k48_bloc.dart';

/// Represents the state of K48 in the application.
class K48State extends Equatable {
  K48State({this.k48ModelObj});

  K48Model? k48ModelObj;

  @override
  List<Object?> get props => [
        k48ModelObj,
      ];
  K48State copyWith({K48Model? k48ModelObj}) {
    return K48State(
      k48ModelObj: k48ModelObj ?? this.k48ModelObj,
    );
  }
}
