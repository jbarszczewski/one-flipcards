// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flipcard_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlipcardViewModel {

 String get id; String get frontContent; String get backContent; String? get tags;
/// Create a copy of FlipcardViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlipcardViewModelCopyWith<FlipcardViewModel> get copyWith => _$FlipcardViewModelCopyWithImpl<FlipcardViewModel>(this as FlipcardViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlipcardViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.frontContent, frontContent) || other.frontContent == frontContent)&&(identical(other.backContent, backContent) || other.backContent == backContent)&&(identical(other.tags, tags) || other.tags == tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,frontContent,backContent,tags);

@override
String toString() {
  return 'FlipcardViewModel(id: $id, frontContent: $frontContent, backContent: $backContent, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $FlipcardViewModelCopyWith<$Res>  {
  factory $FlipcardViewModelCopyWith(FlipcardViewModel value, $Res Function(FlipcardViewModel) _then) = _$FlipcardViewModelCopyWithImpl;
@useResult
$Res call({
 String id, String frontContent, String backContent, String? tags
});




}
/// @nodoc
class _$FlipcardViewModelCopyWithImpl<$Res>
    implements $FlipcardViewModelCopyWith<$Res> {
  _$FlipcardViewModelCopyWithImpl(this._self, this._then);

  final FlipcardViewModel _self;
  final $Res Function(FlipcardViewModel) _then;

/// Create a copy of FlipcardViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? frontContent = null,Object? backContent = null,Object? tags = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,frontContent: null == frontContent ? _self.frontContent : frontContent // ignore: cast_nullable_to_non_nullable
as String,backContent: null == backContent ? _self.backContent : backContent // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _Flipcard implements FlipcardViewModel {
  const _Flipcard({required this.id, required this.frontContent, required this.backContent, this.tags});
  

@override final  String id;
@override final  String frontContent;
@override final  String backContent;
@override final  String? tags;

/// Create a copy of FlipcardViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlipcardCopyWith<_Flipcard> get copyWith => __$FlipcardCopyWithImpl<_Flipcard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flipcard&&(identical(other.id, id) || other.id == id)&&(identical(other.frontContent, frontContent) || other.frontContent == frontContent)&&(identical(other.backContent, backContent) || other.backContent == backContent)&&(identical(other.tags, tags) || other.tags == tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,frontContent,backContent,tags);

@override
String toString() {
  return 'FlipcardViewModel(id: $id, frontContent: $frontContent, backContent: $backContent, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$FlipcardCopyWith<$Res> implements $FlipcardViewModelCopyWith<$Res> {
  factory _$FlipcardCopyWith(_Flipcard value, $Res Function(_Flipcard) _then) = __$FlipcardCopyWithImpl;
@override @useResult
$Res call({
 String id, String frontContent, String backContent, String? tags
});




}
/// @nodoc
class __$FlipcardCopyWithImpl<$Res>
    implements _$FlipcardCopyWith<$Res> {
  __$FlipcardCopyWithImpl(this._self, this._then);

  final _Flipcard _self;
  final $Res Function(_Flipcard) _then;

/// Create a copy of FlipcardViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? frontContent = null,Object? backContent = null,Object? tags = freezed,}) {
  return _then(_Flipcard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,frontContent: null == frontContent ? _self.frontContent : frontContent // ignore: cast_nullable_to_non_nullable
as String,backContent: null == backContent ? _self.backContent : backContent // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
