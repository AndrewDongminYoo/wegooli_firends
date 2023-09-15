// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_image_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UploadImageRequest extends Equatable {
  /// Returns a new [UploadImageRequest] instance.
  UploadImageRequest({
    this.file,
  });

  factory UploadImageRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadImageRequestFromJson(json);

  @JsonKey(includeFromJson: false, includeToJson: false)
  final MultipartFile? file;

  Map<String, dynamic> toJson() => _$UploadImageRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [file];
}
