// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'username',
            'nickname',
            'birthDay',
            'socialId',
            'creditCardId',
            'cardPassword',
            'primaryAddress',
            'emailAddress',
            'detailAddress',
            'expirationDate',
            'firstIssueYear',
            'fullName',
            'invitation',
            'licenseNumbers',
            'password',
            'rePassword',
            'phoneNum',
            'pinCodes',
            'postCode'
          ],
        );
        final val = User(
          username: $checkedConvert('username', (v) => v as String?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          birthDay: $checkedConvert('birthDay', (v) => v as String?),
          socialId: $checkedConvert('socialId', (v) => v as String?),
          creditCardId: $checkedConvert('creditCardId', (v) => v as String?),
          cardPassword: $checkedConvert('cardPassword', (v) => v as String?),
          primaryAddress:
              $checkedConvert('primaryAddress', (v) => v as String?),
          emailAddress: $checkedConvert('emailAddress', (v) => v as String?),
          detailAddress: $checkedConvert('detailAddress', (v) => v as String?),
          expirationDate:
              $checkedConvert('expirationDate', (v) => v as String?),
          firstIssueYear:
              $checkedConvert('firstIssueYear', (v) => v as String?),
          fullName: $checkedConvert('fullName', (v) => v as String?),
          invitation: $checkedConvert('invitation', (v) => v as String?),
          licenseNumbers:
              $checkedConvert('licenseNumbers', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
          rePassword: $checkedConvert('rePassword', (v) => v as String?),
          phoneNum: $checkedConvert('phoneNum', (v) => v as String?),
          pinCodes: $checkedConvert('pinCodes', (v) => v as String?),
          postCode: $checkedConvert('postCode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('birthDay', instance.birthDay);
  writeNotNull('socialId', instance.socialId);
  writeNotNull('creditCardId', instance.creditCardId);
  writeNotNull('cardPassword', instance.cardPassword);
  writeNotNull('primaryAddress', instance.primaryAddress);
  writeNotNull('emailAddress', instance.emailAddress);
  writeNotNull('detailAddress', instance.detailAddress);
  writeNotNull('expirationDate', instance.expirationDate);
  writeNotNull('firstIssueYear', instance.firstIssueYear);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('invitation', instance.invitation);
  writeNotNull('licenseNumbers', instance.licenseNumbers);
  writeNotNull('password', instance.password);
  writeNotNull('rePassword', instance.rePassword);
  writeNotNull('phoneNum', instance.phoneNum);
  writeNotNull('pinCodes', instance.pinCodes);
  writeNotNull('postCode', instance.postCode);
  return val;
}
