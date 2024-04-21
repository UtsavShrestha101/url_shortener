// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneratorDetailEntity _$GeneratorDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _GeneratorDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$GeneratorDetailEntity {
  String get shortUrl => throw _privateConstructorUsedError;
  String get domainId => throw _privateConstructorUsedError;
  String get domainName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratorDetailEntityCopyWith<GeneratorDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratorDetailEntityCopyWith<$Res> {
  factory $GeneratorDetailEntityCopyWith(GeneratorDetailEntity value,
          $Res Function(GeneratorDetailEntity) then) =
      _$GeneratorDetailEntityCopyWithImpl<$Res, GeneratorDetailEntity>;
  @useResult
  $Res call({String shortUrl, String domainId, String domainName});
}

/// @nodoc
class _$GeneratorDetailEntityCopyWithImpl<$Res,
        $Val extends GeneratorDetailEntity>
    implements $GeneratorDetailEntityCopyWith<$Res> {
  _$GeneratorDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortUrl = null,
    Object? domainId = null,
    Object? domainName = null,
  }) {
    return _then(_value.copyWith(
      shortUrl: null == shortUrl
          ? _value.shortUrl
          : shortUrl // ignore: cast_nullable_to_non_nullable
              as String,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      domainName: null == domainName
          ? _value.domainName
          : domainName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneratorDetailEntityImplCopyWith<$Res>
    implements $GeneratorDetailEntityCopyWith<$Res> {
  factory _$$GeneratorDetailEntityImplCopyWith(
          _$GeneratorDetailEntityImpl value,
          $Res Function(_$GeneratorDetailEntityImpl) then) =
      __$$GeneratorDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shortUrl, String domainId, String domainName});
}

/// @nodoc
class __$$GeneratorDetailEntityImplCopyWithImpl<$Res>
    extends _$GeneratorDetailEntityCopyWithImpl<$Res,
        _$GeneratorDetailEntityImpl>
    implements _$$GeneratorDetailEntityImplCopyWith<$Res> {
  __$$GeneratorDetailEntityImplCopyWithImpl(_$GeneratorDetailEntityImpl _value,
      $Res Function(_$GeneratorDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortUrl = null,
    Object? domainId = null,
    Object? domainName = null,
  }) {
    return _then(_$GeneratorDetailEntityImpl(
      shortUrl: null == shortUrl
          ? _value.shortUrl
          : shortUrl // ignore: cast_nullable_to_non_nullable
              as String,
      domainId: null == domainId
          ? _value.domainId
          : domainId // ignore: cast_nullable_to_non_nullable
              as String,
      domainName: null == domainName
          ? _value.domainName
          : domainName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratorDetailEntityImpl implements _GeneratorDetailEntity {
  const _$GeneratorDetailEntityImpl(
      {this.shortUrl = '', this.domainId = '', this.domainName = ''});

  factory _$GeneratorDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratorDetailEntityImplFromJson(json);

  @override
  @JsonKey()
  final String shortUrl;
  @override
  @JsonKey()
  final String domainId;
  @override
  @JsonKey()
  final String domainName;

  @override
  String toString() {
    return 'GeneratorDetailEntity(shortUrl: $shortUrl, domainId: $domainId, domainName: $domainName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratorDetailEntityImpl &&
            (identical(other.shortUrl, shortUrl) ||
                other.shortUrl == shortUrl) &&
            (identical(other.domainId, domainId) ||
                other.domainId == domainId) &&
            (identical(other.domainName, domainName) ||
                other.domainName == domainName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shortUrl, domainId, domainName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratorDetailEntityImplCopyWith<_$GeneratorDetailEntityImpl>
      get copyWith => __$$GeneratorDetailEntityImplCopyWithImpl<
          _$GeneratorDetailEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratorDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _GeneratorDetailEntity implements GeneratorDetailEntity {
  const factory _GeneratorDetailEntity(
      {final String shortUrl,
      final String domainId,
      final String domainName}) = _$GeneratorDetailEntityImpl;

  factory _GeneratorDetailEntity.fromJson(Map<String, dynamic> json) =
      _$GeneratorDetailEntityImpl.fromJson;

  @override
  String get shortUrl;
  @override
  String get domainId;
  @override
  String get domainName;
  @override
  @JsonKey(ignore: true)
  _$$GeneratorDetailEntityImplCopyWith<_$GeneratorDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
