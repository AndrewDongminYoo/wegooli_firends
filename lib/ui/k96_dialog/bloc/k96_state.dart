// ignore_for_file: must_be_immutable

part of 'k96_bloc.dart';

/// Represents the state of K96 in the application.
class K96State extends Equatable {
  K96State({
    this.codeoneController,
    this.k96ModelObj,
  });

  TextEditingController? codeoneController;

  K96Model? k96ModelObj;

  @override
  List<Object?> get props => [
        codeoneController,
        k96ModelObj,
      ];
  K96State copyWith({
    TextEditingController? codeoneController,
    K96Model? k96ModelObj,
  }) {
    return K96State(
      codeoneController: codeoneController ?? this.codeoneController,
      k96ModelObj: k96ModelObj ?? this.k96ModelObj,
    );
  }
}
