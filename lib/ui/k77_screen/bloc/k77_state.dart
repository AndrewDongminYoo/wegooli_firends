// ignore_for_file: must_be_immutable

part of 'k77_bloc.dart';

/// Represents the state of K77 in the application.
class K77State extends Equatable {
  K77State({
    this.emailController,
    this.currentnicknameController,
    this.tfController,
    this.zipcodeController,
    this.oneController,
    this.twoController,
    this.passwordcombinaController,
    this.passwordreenterController,
    this.k77ModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? currentnicknameController;

  TextEditingController? tfController;

  TextEditingController? zipcodeController;

  TextEditingController? oneController;

  TextEditingController? twoController;

  TextEditingController? passwordcombinaController;

  TextEditingController? passwordreenterController;

  K77Model? k77ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        currentnicknameController,
        tfController,
        zipcodeController,
        oneController,
        twoController,
        passwordcombinaController,
        passwordreenterController,
        k77ModelObj,
      ];
  K77State copyWith({
    TextEditingController? emailController,
    TextEditingController? currentnicknameController,
    TextEditingController? tfController,
    TextEditingController? zipcodeController,
    TextEditingController? oneController,
    TextEditingController? twoController,
    TextEditingController? passwordcombinaController,
    TextEditingController? passwordreenterController,
    K77Model? k77ModelObj,
  }) {
    return K77State(
      emailController: emailController ?? this.emailController,
      currentnicknameController:
          currentnicknameController ?? this.currentnicknameController,
      tfController: tfController ?? this.tfController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      oneController: oneController ?? this.oneController,
      twoController: twoController ?? this.twoController,
      passwordcombinaController:
          passwordcombinaController ?? this.passwordcombinaController,
      passwordreenterController:
          passwordreenterController ?? this.passwordreenterController,
      k77ModelObj: k77ModelObj ?? this.k77ModelObj,
    );
  }
}
