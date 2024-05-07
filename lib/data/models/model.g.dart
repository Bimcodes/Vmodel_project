// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogModelImpl _$$BlogModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      body: json['body'] as String?,
      dateCreated: json['dateCreated'] as String?,
    );

Map<String, dynamic> _$$BlogModelImplToJson(_$BlogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'body': instance.body,
      'dateCreated': instance.dateCreated,
    };
