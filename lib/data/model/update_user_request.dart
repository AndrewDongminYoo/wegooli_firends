// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateUserRequest extends Equatable {
  /// Returns a new [UpdateUserRequest] instance.
  UpdateUserRequest({
    this.seq,
    this.add1,
    this.add2,
    this.zipCode,
    this.phoneNumber,
    this.email,
    this.delYn,
    this.id,
    this.memberSeq,
    this.password,
    this.delimit,
    this.nickname,
    this.profilePicture,
    this.color,
  });

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;

  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        add1,
        add2,
        zipCode,
        phoneNumber,
        email,
        delYn,
        id,
        memberSeq,
        password,
        delimit,
        nickname,
        profilePicture,
        color,
      ];
}
