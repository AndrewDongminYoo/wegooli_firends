// ignore_for_file: unused_element

// 📦 Package imports:
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

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: r'carNumber', required: false, includeIfNull: false)
  final String? carNumber;

  @JsonKey(name: r'carModel', required: false, includeIfNull: false)
  final String? carModel;

  @JsonKey(name: r'carNickname', required: false, includeIfNull: false)
  final String? carNickname;

  @JsonKey(name: r'fee', required: false, includeIfNull: false)
  final String? fee;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: r'withdrawalAt', required: false, includeIfNull: false)
  final String? withdrawalAt;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionModelToJson(this);
}
