// ignore_for_file: must_be_immutable

part of 'k82_bloc.dart';

/// Represents the state of K82 in the application.
class K82State extends Equatable {
  K82State({this.k82ModelObj});

  K82Model? k82ModelObj;

  @override
  List<Object?> get props => [
        k82ModelObj,
      ];
  K82State copyWith({K82Model? k82ModelObj}) {
    return K82State(
      k82ModelObj: k82ModelObj ?? this.k82ModelObj,
    );
  }
}
