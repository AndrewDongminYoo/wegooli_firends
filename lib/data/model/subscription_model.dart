// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SubscriptionModel extends Equatable {
  /// Returns a new [SubscriptionModel] instance.
  SubscriptionModel({
    this.accountId,
    this.teamSeq,
    this.teamName,
    this.carNumber,
    this.carModel,
    this.carNickname,
    this.fee,
    this.createdAt,
    this.endAt,
    this.withdrawalAt,
  });

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: 'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: 'carNumber', required: false, includeIfNull: false)
  final String? carNumber;

  @JsonKey(name: 'carModel', required: false, includeIfNull: false)
  final String? carModel;

  @JsonKey(name: 'carNickname', required: false, includeIfNull: false)
  final String? carNickname;

  @JsonKey(name: 'fee', required: false, includeIfNull: false)
  final String? fee;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: 'withdrawalAt', required: false, includeIfNull: false)
  final String? withdrawalAt;

  Map<String, dynamic> toJson() => _$SubscriptionModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        accountId,
        teamSeq,
        teamName,
        carNumber,
        carModel,
        carNickname,
        fee,
        createdAt,
        endAt,
        withdrawalAt,
      ];
}
