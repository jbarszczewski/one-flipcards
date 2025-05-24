// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flipcards_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlipcardsOverviewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlipcardsOverviewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewEvent()';
}


}

/// @nodoc
class $FlipcardsOverviewEventCopyWith<$Res>  {
$FlipcardsOverviewEventCopyWith(FlipcardsOverviewEvent _, $Res Function(FlipcardsOverviewEvent) __);
}


/// @nodoc


class _CreateFlipcard implements FlipcardsOverviewEvent {
  const _CreateFlipcard(this.flipcard);
  

 final  FlipcardViewModel flipcard;

/// Create a copy of FlipcardsOverviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFlipcardCopyWith<_CreateFlipcard> get copyWith => __$CreateFlipcardCopyWithImpl<_CreateFlipcard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFlipcard&&(identical(other.flipcard, flipcard) || other.flipcard == flipcard));
}


@override
int get hashCode => Object.hash(runtimeType,flipcard);

@override
String toString() {
  return 'FlipcardsOverviewEvent.createFlipcard(flipcard: $flipcard)';
}


}

/// @nodoc
abstract mixin class _$CreateFlipcardCopyWith<$Res> implements $FlipcardsOverviewEventCopyWith<$Res> {
  factory _$CreateFlipcardCopyWith(_CreateFlipcard value, $Res Function(_CreateFlipcard) _then) = __$CreateFlipcardCopyWithImpl;
@useResult
$Res call({
 FlipcardViewModel flipcard
});


$FlipcardViewModelCopyWith<$Res> get flipcard;

}
/// @nodoc
class __$CreateFlipcardCopyWithImpl<$Res>
    implements _$CreateFlipcardCopyWith<$Res> {
  __$CreateFlipcardCopyWithImpl(this._self, this._then);

  final _CreateFlipcard _self;
  final $Res Function(_CreateFlipcard) _then;

/// Create a copy of FlipcardsOverviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? flipcard = null,}) {
  return _then(_CreateFlipcard(
null == flipcard ? _self.flipcard : flipcard // ignore: cast_nullable_to_non_nullable
as FlipcardViewModel,
  ));
}

/// Create a copy of FlipcardsOverviewEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlipcardViewModelCopyWith<$Res> get flipcard {
  
  return $FlipcardViewModelCopyWith<$Res>(_self.flipcard, (value) {
    return _then(_self.copyWith(flipcard: value));
  });
}
}

/// @nodoc


class _DeleteFlipcard implements FlipcardsOverviewEvent {
  const _DeleteFlipcard(this.id);
  

 final  String id;

/// Create a copy of FlipcardsOverviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteFlipcardCopyWith<_DeleteFlipcard> get copyWith => __$DeleteFlipcardCopyWithImpl<_DeleteFlipcard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteFlipcard&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FlipcardsOverviewEvent.deleteFlipcard(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteFlipcardCopyWith<$Res> implements $FlipcardsOverviewEventCopyWith<$Res> {
  factory _$DeleteFlipcardCopyWith(_DeleteFlipcard value, $Res Function(_DeleteFlipcard) _then) = __$DeleteFlipcardCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteFlipcardCopyWithImpl<$Res>
    implements _$DeleteFlipcardCopyWith<$Res> {
  __$DeleteFlipcardCopyWithImpl(this._self, this._then);

  final _DeleteFlipcard _self;
  final $Res Function(_DeleteFlipcard) _then;

/// Create a copy of FlipcardsOverviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteFlipcard(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Started implements FlipcardsOverviewEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewEvent.started()';
}


}




/// @nodoc


class _Subscribe implements FlipcardsOverviewEvent {
  const _Subscribe();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscribe);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewEvent.subscribe()';
}


}




/// @nodoc
mixin _$FlipcardsOverviewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlipcardsOverviewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewState()';
}


}

/// @nodoc
class $FlipcardsOverviewStateCopyWith<$Res>  {
$FlipcardsOverviewStateCopyWith(FlipcardsOverviewState _, $Res Function(FlipcardsOverviewState) __);
}


/// @nodoc


class _Error implements FlipcardsOverviewState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewState.error()';
}


}




/// @nodoc


class _Initial implements FlipcardsOverviewState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewState.initial()';
}


}




/// @nodoc


class _Loading implements FlipcardsOverviewState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlipcardsOverviewState.loading()';
}


}




/// @nodoc


class _Success implements FlipcardsOverviewState {
  const _Success(final  List<FlipcardViewModel> flipcards): _flipcards = flipcards;
  

 final  List<FlipcardViewModel> _flipcards;
 List<FlipcardViewModel> get flipcards {
  if (_flipcards is EqualUnmodifiableListView) return _flipcards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flipcards);
}


/// Create a copy of FlipcardsOverviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._flipcards, _flipcards));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_flipcards));

@override
String toString() {
  return 'FlipcardsOverviewState.success(flipcards: $flipcards)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $FlipcardsOverviewStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<FlipcardViewModel> flipcards
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of FlipcardsOverviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? flipcards = null,}) {
  return _then(_Success(
null == flipcards ? _self._flipcards : flipcards // ignore: cast_nullable_to_non_nullable
as List<FlipcardViewModel>,
  ));
}


}

// dart format on
