// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalRequest _$TerminalRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TerminalRequest',
      json,
      ($checkedConvert) {
        final val = TerminalRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TerminalRequestToJson(TerminalRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('carNum', instance.carNum);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('status', instance.status);
  return val;
}
