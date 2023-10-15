// ignore_for_file: must_be_immutable

part of 'k108_bloc.dart';

/// Represents the state of K108 in the application.
class K108State extends Equatable {
  K108State({this.k108ModelObj});

  K108Model? k108ModelObj;

  @override
  List<Object?> get props => [
        k108ModelObj,
      ];
  K108State copyWith({K108Model? k108ModelObj}) {
    return K108State(
      k108ModelObj: k108ModelObj ?? this.k108ModelObj,
    );
  }
}
