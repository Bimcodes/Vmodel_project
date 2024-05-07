import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class BlogModel with _$BlogModel {
  factory BlogModel({
    String? id,
    String? title,
    String? subTitle,
    String? body,
    String? dateCreated,
  }) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
}
