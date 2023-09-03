// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'granted_authority.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GrantedAuthority {
  /// Returns a new [GrantedAuthority] instance.
  GrantedAuthority({
    this.authority,
  });

  @JsonKey(name: r'authority', required: false, includeIfNull: false)
  final String? authority;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GrantedAuthority && other.authority == authority;

  @override
  int get hashCode => authority.hashCode;

  factory GrantedAuthority.fromJson(Map<String, dynamic> json) =>
      _$GrantedAuthorityFromJson(json);

  Map<String, dynamic> toJson() => _$GrantedAuthorityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
