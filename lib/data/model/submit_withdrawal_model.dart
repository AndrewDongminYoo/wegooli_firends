//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'submit_withdrawal_model.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SubmitWithdrawalModel {
  /// Returns a new [SubmitWithdrawalModel] instance.
  SubmitWithdrawalModel({

     this.accountId,

     this.date,

     this.teamSeq,
  });

  @JsonKey(
    
    name: r'accountId',
    required: false,
    includeIfNull: false
  )


  final String? accountId;



  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false
  )


  final String? date;



  @JsonKey(
    
    name: r'teamSeq',
    required: false,
    includeIfNull: false
  )


  final int? teamSeq;



  @override
  bool operator ==(Object other) => identical(this, other) || other is SubmitWithdrawalModel &&
     other.accountId == accountId &&
     other.date == date &&
     other.teamSeq == teamSeq;

  @override
  int get hashCode =>
    accountId.hashCode +
    date.hashCode +
    teamSeq.hashCode;

  factory SubmitWithdrawalModel.fromJson(Map<String, dynamic> json) => _$SubmitWithdrawalModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitWithdrawalModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

