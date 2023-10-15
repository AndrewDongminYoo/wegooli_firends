// ignore_for_file: must_be_immutable

part of 'k81_bloc.dart';

/// Represents the state of K81 in the application.
class K81State extends Equatable {
  K81State({
    this.emailController,
    this.currentnicknameController,
    this.zipcodeController,
    this.tfController,
    this.k81ModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? currentnicknameController;

  TextEditingController? zipcodeController;

  TextEditingController? tfController;

  K81Model? k81ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        currentnicknameController,
        zipcodeController,
        tfController,
        k81ModelObj,
      ];
  K81State copyWith({
    TextEditingController? emailController,
    TextEditingController? currentnicknameController,
    TextEditingController? zipcodeController,
    TextEditingController? tfController,
    K81Model? k81ModelObj,
  }) {
    return K81State(
      emailController: emailController ?? this.emailController,
      currentnicknameController:
          currentnicknameController ?? this.currentnicknameController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      tfController: tfController ?? this.tfController,
      k81ModelObj: k81ModelObj ?? this.k81ModelObj,
    );
  }
}
