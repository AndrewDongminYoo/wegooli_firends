// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'granted_authority.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GrantedAuthority extends Equatable {
  /// Returns a new [GrantedAuthority] instance.
  const GrantedAuthority({
    this.authority,
  });

  factory GrantedAuthority.fromJson(Map<String, dynamic> json) =>
      _$GrantedAuthorityFromJson(json);

  @JsonKey(name: 'authority', required: false, includeIfNull: false)
  final String? authority;

  Map<String, dynamic> toJson() => _$GrantedAuthorityToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [authority];
}
