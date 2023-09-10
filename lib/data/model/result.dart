// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result extends Equatable {
  const Result({this.token});

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  final String? token;

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [token];
}
