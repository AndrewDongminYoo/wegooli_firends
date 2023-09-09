// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_team_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorTeamDetail _$OperatorTeamDetailFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorTeamDetail',
      json,
      ($checkedConvert) {
        final val = OperatorTeamDetail(
          model: $checkedConvert('model', (v) => v as String?),
          fee: $checkedConvert('fee', (v) => v as String?),
          contactAt: $checkedConvert('contactAt', (v) => v as String?),
          accountList: $checkedConvert(
              'accountList',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OperatorTeamAccountDetail.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorTeamDetailToJson(OperatorTeamDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('model', instance.model);
  writeNotNull('fee', instance.fee);
  writeNotNull('contactAt', instance.contactAt);
  writeNotNull(
      'accountList', instance.accountList?.map((e) => e.toJson()).toList());
  return val;
}
