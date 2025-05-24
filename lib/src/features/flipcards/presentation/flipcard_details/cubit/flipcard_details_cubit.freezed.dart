// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flipcard_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlipcardDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlipcardDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardDetailsState()';
}


}

/// @nodoc
class $FlipcardDetailsStateCopyWith<$Res>  {
$FlipcardDetailsStateCopyWith(FlipcardDetailsState _, $Res Function(FlipcardDetailsState) __);
}


/// @nodoc


class _Error implements FlipcardDetailsState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardDetailsState.error()';
}


}




/// @nodoc


class _Initial implements FlipcardDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardDetailsState.initial()';
}


}




/// @nodoc


class _Loading implements FlipcardDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardDetailsState.loading()';
}


}




/// @nodoc


class _Success implements FlipcardDetailsState {
  const _Success(this.item);
  

 final  FlipcardViewModel item;

/// Create a copy of FlipcardDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'FlipcardDetailsState.success(item: $item)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $FlipcardDetailsStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 FlipcardViewModel item
});


$FlipcardViewModelCopyWith<$Res> get item;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of FlipcardDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_Success(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as FlipcardViewModel,
  ));
}

/// Create a copy of FlipcardDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlipcardViewModelCopyWith<$Res> get item {
  
  return $FlipcardViewModelCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
