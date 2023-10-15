// ignore_for_file: must_be_immutable

part of 'k53_bloc.dart';

/// Represents the state of K53 in the application.
class K53State extends Equatable {
  K53State({
    this.zipcodeoneController,
    this.defaultaddressController,
    this.detailedaddressController,
    this.emailaddressController,
    this.passwordcomboController,
    this.passwordreenterController,
    this.nicknameinputController,
    this.k53ModelObj,
  });

  TextEditingController? zipcodeoneController;

  TextEditingController? defaultaddressController;

  TextEditingController? detailedaddressController;

  TextEditingController? emailaddressController;

  TextEditingController? passwordcomboController;

  TextEditingController? passwordreenterController;

  TextEditingController? nicknameinputController;

  K53Model? k53ModelObj;

  @override
  List<Object?> get props => [
        zipcodeoneController,
        defaultaddressController,
        detailedaddressController,
        emailaddressController,
        passwordcomboController,
        passwordreenterController,
        nicknameinputController,
        k53ModelObj,
      ];
  K53State copyWith({
    TextEditingController? zipcodeoneController,
    TextEditingController? defaultaddressController,
    TextEditingController? detailedaddressController,
    TextEditingController? emailaddressController,
    TextEditingController? passwordcomboController,
    TextEditingController? passwordreenterController,
    TextEditingController? nicknameinputController,
    K53Model? k53ModelObj,
  }) {
    return K53State(
      zipcodeoneController: zipcodeoneController ?? this.zipcodeoneController,
      defaultaddressController:
          defaultaddressController ?? this.defaultaddressController,
      detailedaddressController:
          detailedaddressController ?? this.detailedaddressController,
      emailaddressController:
          emailaddressController ?? this.emailaddressController,
      passwordcomboController:
          passwordcomboController ?? this.passwordcomboController,
      passwordreenterController:
          passwordreenterController ?? this.passwordreenterController,
      nicknameinputController:
          nicknameinputController ?? this.nicknameinputController,
      k53ModelObj: k53ModelObj ?? this.k53ModelObj,
    );
  }
}
