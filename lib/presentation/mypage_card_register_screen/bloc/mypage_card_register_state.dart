// ignore_for_file: must_be_immutable

part of 'mypage_card_register_bloc.dart';

/// Represents the state of MypageCardRegister in the application.
class MypageCardRegisterState extends Equatable {
  MypageCardRegisterState({
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

  MypageCardRegisterModel? mypageCardRegisterModelObj;

  @override
  List<Object?> get props => [
        cardnumbervalueController,
        expirationdatevController,
        zipcodeController,
        edittextController,
        mypageCardRegisterModelObj,
      ];
  MypageCardRegisterState copyWith({
    TextEditingController? cardnumbervalueController,
    TextEditingController? expirationdatevController,
    TextEditingController? zipcodeController,
    TextEditingController? edittextController,
    MypageCardRegisterModel? mypageCardRegisterModelObj,
  }) {
    return MypageCardRegisterState(
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
