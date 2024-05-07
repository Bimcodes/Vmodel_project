// ignore_for_file: invalid_annotation_target

import 'package:blog_application/constants/functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_models.freezed.dart';
part 'freezed_models.g.dart';

@freezed
abstract class BasicResponse with _$BasicResponse {
  factory BasicResponse({
    @Default(0) int statusCode,
    @JsonKey(fromJson: getBool) bool? success,
    @JsonKey(fromJson: getString) String? message,
    @JsonKey(fromJson: getString) String? trigger,
    @JsonKey(fromJson: getString) String? token,
    dynamic data,
  }) = _BasicResponse;

  factory BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicResponseFromJson(json);
}
