// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicResponse _$BasicResponseFromJson(Map<String, dynamic> json) {
  return _BasicResponse.fromJson(json);
}

/// @nodoc
mixin _$BasicResponse {
  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: getBool)
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(fromJson: getString)
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(fromJson: getString)
  String? get trigger => throw _privateConstructorUsedError;
  @JsonKey(fromJson: getString)
  String? get token => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicResponseCopyWith<BasicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicResponseCopyWith<$Res> {
  factory $BasicResponseCopyWith(
          BasicResponse value, $Res Function(BasicResponse) then) =
      _$BasicResponseCopyWithImpl<$Res, BasicResponse>;
  @useResult
  $Res call(
      {int statusCode,
      @JsonKey(fromJson: getBool) bool? success,
      @JsonKey(fromJson: getString) String? message,
      @JsonKey(fromJson: getString) String? trigger,
      @JsonKey(fromJson: getString) String? token,
      dynamic data});
}

/// @nodoc
class _$BasicResponseCopyWithImpl<$Res, $Val extends BasicResponse>
    implements $BasicResponseCopyWith<$Res> {
  _$BasicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? success = freezed,
    Object? message = freezed,
    Object? trigger = freezed,
    Object? token = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      trigger: freezed == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicResponseImplCopyWith<$Res>
    implements $BasicResponseCopyWith<$Res> {
  factory _$$BasicResponseImplCopyWith(
          _$BasicResponseImpl value, $Res Function(_$BasicResponseImpl) then) =
      __$$BasicResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode,
      @JsonKey(fromJson: getBool) bool? success,
      @JsonKey(fromJson: getString) String? message,
      @JsonKey(fromJson: getString) String? trigger,
      @JsonKey(fromJson: getString) String? token,
      dynamic data});
}

/// @nodoc
class __$$BasicResponseImplCopyWithImpl<$Res>
    extends _$BasicResponseCopyWithImpl<$Res, _$BasicResponseImpl>
    implements _$$BasicResponseImplCopyWith<$Res> {
  __$$BasicResponseImplCopyWithImpl(
      _$BasicResponseImpl _value, $Res Function(_$BasicResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? success = freezed,
    Object? message = freezed,
    Object? trigger = freezed,
    Object? token = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BasicResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      trigger: freezed == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicResponseImpl implements _BasicResponse {
  _$BasicResponseImpl(
      {this.statusCode = 0,
      @JsonKey(fromJson: getBool) this.success,
      @JsonKey(fromJson: getString) this.message,
      @JsonKey(fromJson: getString) this.trigger,
      @JsonKey(fromJson: getString) this.token,
      this.data});

  factory _$BasicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicResponseImplFromJson(json);

  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey(fromJson: getBool)
  final bool? success;
  @override
  @JsonKey(fromJson: getString)
  final String? message;
  @override
  @JsonKey(fromJson: getString)
  final String? trigger;
  @override
  @JsonKey(fromJson: getString)
  final String? token;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'BasicResponse(statusCode: $statusCode, success: $success, message: $message, trigger: $trigger, token: $token, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, success, message,
      trigger, token, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicResponseImplCopyWith<_$BasicResponseImpl> get copyWith =>
      __$$BasicResponseImplCopyWithImpl<_$BasicResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicResponseImplToJson(
      this,
    );
  }
}

abstract class _BasicResponse implements BasicResponse {
  factory _BasicResponse(
      {final int statusCode,
      @JsonKey(fromJson: getBool) final bool? success,
      @JsonKey(fromJson: getString) final String? message,
      @JsonKey(fromJson: getString) final String? trigger,
      @JsonKey(fromJson: getString) final String? token,
      final dynamic data}) = _$BasicResponseImpl;

  factory _BasicResponse.fromJson(Map<String, dynamic> json) =
      _$BasicResponseImpl.fromJson;

  @override
  int get statusCode;
  @override
  @JsonKey(fromJson: getBool)
  bool? get success;
  @override
  @JsonKey(fromJson: getString)
  String? get message;
  @override
  @JsonKey(fromJson: getString)
  String? get trigger;
  @override
  @JsonKey(fromJson: getString)
  String? get token;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$BasicResponseImplCopyWith<_$BasicResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
