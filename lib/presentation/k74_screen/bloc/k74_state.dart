// ignore_for_file: must_be_immutable

part of 'k74_bloc.dart';

/// Represents the state of K74 in the application.
class K74State extends Equatable {
  K74State({
    this.chatinputoneController,
    this.k74ModelObj,
  });

  TextEditingController? chatinputoneController;

  K74Model? k74ModelObj;

  @override
  List<Object?> get props => [
        chatinputoneController,
        k74ModelObj,
      ];
  K74State copyWith({
    TextEditingController? chatinputoneController,
    K74Model? k74ModelObj,
  }) {
    return K74State(
      chatinputoneController:
          chatinputoneController ?? this.chatinputoneController,
      k74ModelObj: k74ModelObj ?? this.k74ModelObj,
    );
  }
}
