// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicResponseImpl _$$BasicResponseImplFromJson(Map<String, dynamic> json) =>
    _$BasicResponseImpl(
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
      success: getBool(json['success']),
      message: getString(json['message']),
      trigger: getString(json['trigger']),
      token: getString(json['token']),
      data: json['data'],
    );

Map<String, dynamic> _$$BasicResponseImplToJson(_$BasicResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'success': instance.success,
      'message': instance.message,
      'trigger': instance.trigger,
      'token': instance.token,
      'data': instance.data,
    };
