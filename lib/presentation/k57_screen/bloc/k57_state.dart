// ignore_for_file: must_be_immutable

part of 'k57_bloc.dart';

/// Represents the state of K57 in the application.
class K57State extends Equatable {
  K57State({this.k57ModelObj});

  K57Model? k57ModelObj;

  @override
  List<Object?> get props => [
        k57ModelObj,
      ];
  K57State copyWith({K57Model? k57ModelObj}) {
    return K57State(
      k57ModelObj: k57ModelObj ?? this.k57ModelObj,
    );
  }
}
