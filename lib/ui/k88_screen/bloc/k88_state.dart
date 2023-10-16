// ignore_for_file: must_be_immutable

part of 'k88_bloc.dart';

/// Represents the state of K88 in the application.
class K88State extends Equatable {
  K88State({this.k88ModelObj});

  K88Model? k88ModelObj;

  @override
  List<Object?> get props => [
        k88ModelObj,
      ];
  K88State copyWith({K88Model? k88ModelObj}) {
    return K88State(
      k88ModelObj: k88ModelObj ?? this.k88ModelObj,
    );
  }
}
