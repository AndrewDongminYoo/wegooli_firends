// ignore_for_file: must_be_immutable

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [signup_page_identity_verification_waiting_with_telecom_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignupPageIdentityVerificationWaitingWithTelecomModel extends Equatable {
  SignupPageIdentityVerificationWaitingWithTelecomModel(
      {this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  SignupPageIdentityVerificationWaitingWithTelecomModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return SignupPageIdentityVerificationWaitingWithTelecomModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
