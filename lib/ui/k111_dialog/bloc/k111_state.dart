// ignore_for_file: must_be_immutable

part of 'k111_bloc.dart';

/// Represents the state of K111 in the application.
class K111State extends Equatable {
  K111State({this.k111ModelObj});

  K111Model? k111ModelObj;

  @override
  List<Object?> get props => [
        k111ModelObj,
      ];
  K111State copyWith({K111Model? k111ModelObj}) {
    return K111State(
      k111ModelObj: k111ModelObj ?? this.k111ModelObj,
    );
  }
}
