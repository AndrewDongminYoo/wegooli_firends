// ignore_for_file: must_be_immutable

part of 'one5_bloc.dart';

/// Represents the state of One5 in the application.
class One5State extends Equatable {
  One5State({this.one5ModelObj});

  One5Model? one5ModelObj;

  @override
  List<Object?> get props => [
        one5ModelObj,
      ];
  One5State copyWith({One5Model? one5ModelObj}) {
    return One5State(
      one5ModelObj: one5ModelObj ?? this.one5ModelObj,
    );
  }
}
