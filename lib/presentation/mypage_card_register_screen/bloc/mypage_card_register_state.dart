// ignore_for_file: must_be_immutable

part of 'mypage_card_register_bloc.dart';

/// Represents the state of MyPageCardRegister in the application.
class MyPageCardRegisterState extends Equatable {
  MyPageCardRegisterState({
    this.cardnumbervalueController,
    this.expirationdatevController,
    this.zipcodeController,
    this.edittextController,
    this.mypageCardRegisterModelObj,
  });

  TextEditingController? cardnumbervalueController;

  TextEditingController? expirationdatevController;

  TextEditingController? zipcodeController;

  TextEditingController? edittextController;

  MyPageCardRegisterModel? mypageCardRegisterModelObj;

  @override
  List<Object?> get props => [
        cardnumbervalueController,
        expirationdatevController,
        zipcodeController,
        edittextController,
        mypageCardRegisterModelObj,
      ];
  MyPageCardRegisterState copyWith({
    TextEditingController? cardnumbervalueController,
    TextEditingController? expirationdatevController,
    TextEditingController? zipcodeController,
    TextEditingController? edittextController,
    MyPageCardRegisterModel? mypageCardRegisterModelObj,
  }) {
    return MyPageCardRegisterState(
      cardnumbervalueController:
          cardnumbervalueController ?? this.cardnumbervalueController,
      expirationdatevController:
          expirationdatevController ?? this.expirationdatevController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      edittextController: edittextController ?? this.edittextController,
      mypageCardRegisterModelObj:
          mypageCardRegisterModelObj ?? this.mypageCardRegisterModelObj,
    );
  }
}
