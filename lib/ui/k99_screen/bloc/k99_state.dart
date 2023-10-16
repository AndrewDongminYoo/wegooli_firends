// ignore_for_file: must_be_immutable

part of 'k99_bloc.dart';

/// Represents the state of K99 in the application.
class K99State extends Equatable {
  K99State({this.k99ModelObj});

  K99Model? k99ModelObj;

  @override
  List<Object?> get props => [
        k99ModelObj,
      ];
  K99State copyWith({K99Model? k99ModelObj}) {
    return K99State(
      k99ModelObj: k99ModelObj ?? this.k99ModelObj,
    );
  }
}
