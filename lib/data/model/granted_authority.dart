// ignore_for_file: unused_element

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
  GrantedAuthority({
    this.authority,
  });

  @JsonKey(name: r'authority', required: false, includeIfNull: false)
  final String? authority;

  factory GrantedAuthority.fromJson(Map<String, dynamic> json) =>
      _$GrantedAuthorityFromJson(json);

  Map<String, dynamic> toJson() => _$GrantedAuthorityToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => ['authority'];
}
