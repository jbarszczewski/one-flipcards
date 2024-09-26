// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flipcard_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlipcardViewModel {
  String get id => throw _privateConstructorUsedError;
  String get frontContent => throw _privateConstructorUsedError;
  String get backContent => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlipcardViewModelCopyWith<FlipcardViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlipcardViewModelCopyWith<$Res> {
  factory $FlipcardViewModelCopyWith(
          FlipcardViewModel value, $Res Function(FlipcardViewModel) then) =
      _$FlipcardViewModelCopyWithImpl<$Res, FlipcardViewModel>;
  @useResult
  $Res call({String id, String frontContent, String backContent, String? tags});
}

/// @nodoc
class _$FlipcardViewModelCopyWithImpl<$Res, $Val extends FlipcardViewModel>
    implements $FlipcardViewModelCopyWith<$Res> {
  _$FlipcardViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontContent = null,
    Object? backContent = null,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      frontContent: null == frontContent
          ? _value.frontContent
          : frontContent // ignore: cast_nullable_to_non_nullable
              as String,
      backContent: null == backContent
          ? _value.backContent
          : backContent // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlipcardImplCopyWith<$Res>
    implements $FlipcardViewModelCopyWith<$Res> {
  factory _$$FlipcardImplCopyWith(
          _$FlipcardImpl value, $Res Function(_$FlipcardImpl) then) =
      __$$FlipcardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String frontContent, String backContent, String? tags});
}

/// @nodoc
class __$$FlipcardImplCopyWithImpl<$Res>
    extends _$FlipcardViewModelCopyWithImpl<$Res, _$FlipcardImpl>
    implements _$$FlipcardImplCopyWith<$Res> {
  __$$FlipcardImplCopyWithImpl(
      _$FlipcardImpl _value, $Res Function(_$FlipcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontContent = null,
    Object? backContent = null,
    Object? tags = freezed,
  }) {
    return _then(_$FlipcardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      frontContent: null == frontContent
          ? _value.frontContent
          : frontContent // ignore: cast_nullable_to_non_nullable
              as String,
      backContent: null == backContent
          ? _value.backContent
          : backContent // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FlipcardImpl implements _Flipcard {
  const _$FlipcardImpl(
      {required this.id,
      required this.frontContent,
      required this.backContent,
      this.tags});

  @override
  final String id;
  @override
  final String frontContent;
  @override
  final String backContent;
  @override
  final String? tags;

  @override
  String toString() {
    return 'FlipcardViewModel(id: $id, frontContent: $frontContent, backContent: $backContent, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlipcardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frontContent, frontContent) ||
                other.frontContent == frontContent) &&
            (identical(other.backContent, backContent) ||
                other.backContent == backContent) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, frontContent, backContent, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlipcardImplCopyWith<_$FlipcardImpl> get copyWith =>
      __$$FlipcardImplCopyWithImpl<_$FlipcardImpl>(this, _$identity);
}

abstract class _Flipcard implements FlipcardViewModel {
  const factory _Flipcard(
      {required final String id,
      required final String frontContent,
      required final String backContent,
      final String? tags}) = _$FlipcardImpl;

  @override
  String get id;
  @override
  String get frontContent;
  @override
  String get backContent;
  @override
  String? get tags;
  @override
  @JsonKey(ignore: true)
  _$$FlipcardImplCopyWith<_$FlipcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
