// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    this.username,
    this.nickname,
    this.birthDay,
    this.socialId,
    this.creditCardId,
    this.cardPassword,
    this.primaryAddress,
    this.emailAddress,
    this.detailAddress,
    this.expirationDate,
    this.firstIssueYear,
    this.fullName,
    this.invitation,
    this.licenseNumbers,
    this.password,
    this.rePassword,
    this.phoneNum,
    this.pinCodes,
    this.postCode,
  });

  final String? username;
  final String? nickname;
  final String? birthDay;
  final String? socialId;
  final String? creditCardId;
  final String? cardPassword;
  final String? primaryAddress;
  final String? emailAddress;
  final String? detailAddress;
  final String? expirationDate;
  final String? firstIssueYear;
  final String? fullName;
  final String? invitation;
  final String? licenseNumbers;
  final String? password;
  final String? rePassword;
  final String? phoneNum;
  final String? pinCodes;
  final String? postCode;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? username,
    String? nickname,
    String? birthDay,
    String? socialId,
    String? creditCardId,
    String? cardPassword,
    String? primaryAddress,
    String? emailAddress,
    String? detailAddress,
    String? expirationDate,
    String? firstIssueYear,
    String? fullName,
    String? invitation,
    String? licenseNumbers,
    String? password,
    String? rePassword,
    String? phoneNum,
    String? pinCodes,
    String? postCode,
  }) {
    return User(
      username: username ?? this.username,
      nickname: nickname ?? this.nickname,
      birthDay: birthDay ?? this.birthDay,
      socialId: socialId ?? this.socialId,
      creditCardId: creditCardId ?? this.creditCardId,
      cardPassword: cardPassword ?? this.cardPassword,
      primaryAddress: primaryAddress ?? this.primaryAddress,
      emailAddress: emailAddress ?? this.emailAddress,
      detailAddress: detailAddress ?? this.detailAddress,
      expirationDate: expirationDate ?? this.expirationDate,
      firstIssueYear: firstIssueYear ?? this.firstIssueYear,
      fullName: fullName ?? this.fullName,
      invitation: invitation ?? this.invitation,
      licenseNumbers: licenseNumbers ?? this.licenseNumbers,
      password: password ?? this.password,
      rePassword: rePassword ?? this.rePassword,
      phoneNum: phoneNum ?? this.phoneNum,
      pinCodes: pinCodes ?? this.pinCodes,
      postCode: postCode ?? this.postCode,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      username,
      nickname,
      birthDay,
      socialId,
      creditCardId,
      cardPassword,
      primaryAddress,
      emailAddress,
      detailAddress,
      expirationDate,
      firstIssueYear,
      fullName,
      invitation,
      licenseNumbers,
      password,
      rePassword,
      phoneNum,
      pinCodes,
      postCode,
    ];
  }
}
