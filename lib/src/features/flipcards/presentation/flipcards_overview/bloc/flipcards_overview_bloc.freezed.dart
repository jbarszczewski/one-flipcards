// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flipcards_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlipcardsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlipcardViewModel flipcard) createFlipcard,
    required TResult Function(String id) deleteFlipcard,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult? Function(String id)? deleteFlipcard,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult Function(String id)? deleteFlipcard,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFlipcard value) createFlipcard,
    required TResult Function(_DeleteFlipcard value) deleteFlipcard,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFlipcard value)? createFlipcard,
    TResult? Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFlipcard value)? createFlipcard,
    TResult Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlipcardsOverviewEventCopyWith<$Res> {
  factory $FlipcardsOverviewEventCopyWith(FlipcardsOverviewEvent value,
          $Res Function(FlipcardsOverviewEvent) then) =
      _$FlipcardsOverviewEventCopyWithImpl<$Res, FlipcardsOverviewEvent>;
}

/// @nodoc
class _$FlipcardsOverviewEventCopyWithImpl<$Res,
        $Val extends FlipcardsOverviewEvent>
    implements $FlipcardsOverviewEventCopyWith<$Res> {
  _$FlipcardsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateFlipcardImplCopyWith<$Res> {
  factory _$$CreateFlipcardImplCopyWith(_$CreateFlipcardImpl value,
          $Res Function(_$CreateFlipcardImpl) then) =
      __$$CreateFlipcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlipcardViewModel flipcard});

  $FlipcardViewModelCopyWith<$Res> get flipcard;
}

/// @nodoc
class __$$CreateFlipcardImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewEventCopyWithImpl<$Res, _$CreateFlipcardImpl>
    implements _$$CreateFlipcardImplCopyWith<$Res> {
  __$$CreateFlipcardImplCopyWithImpl(
      _$CreateFlipcardImpl _value, $Res Function(_$CreateFlipcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flipcard = null,
  }) {
    return _then(_$CreateFlipcardImpl(
      null == flipcard
          ? _value.flipcard
          : flipcard // ignore: cast_nullable_to_non_nullable
              as FlipcardViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FlipcardViewModelCopyWith<$Res> get flipcard {
    return $FlipcardViewModelCopyWith<$Res>(_value.flipcard, (value) {
      return _then(_value.copyWith(flipcard: value));
    });
  }
}

/// @nodoc

class _$CreateFlipcardImpl implements _CreateFlipcard {
  const _$CreateFlipcardImpl(this.flipcard);

  @override
  final FlipcardViewModel flipcard;

  @override
  String toString() {
    return 'FlipcardsOverviewEvent.createFlipcard(flipcard: $flipcard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFlipcardImpl &&
            (identical(other.flipcard, flipcard) ||
                other.flipcard == flipcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flipcard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFlipcardImplCopyWith<_$CreateFlipcardImpl> get copyWith =>
      __$$CreateFlipcardImplCopyWithImpl<_$CreateFlipcardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlipcardViewModel flipcard) createFlipcard,
    required TResult Function(String id) deleteFlipcard,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return createFlipcard(flipcard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult? Function(String id)? deleteFlipcard,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return createFlipcard?.call(flipcard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult Function(String id)? deleteFlipcard,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (createFlipcard != null) {
      return createFlipcard(flipcard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFlipcard value) createFlipcard,
    required TResult Function(_DeleteFlipcard value) deleteFlipcard,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return createFlipcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFlipcard value)? createFlipcard,
    TResult? Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return createFlipcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFlipcard value)? createFlipcard,
    TResult Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (createFlipcard != null) {
      return createFlipcard(this);
    }
    return orElse();
  }
}

abstract class _CreateFlipcard implements FlipcardsOverviewEvent {
  const factory _CreateFlipcard(final FlipcardViewModel flipcard) =
      _$CreateFlipcardImpl;

  FlipcardViewModel get flipcard;
  @JsonKey(ignore: true)
  _$$CreateFlipcardImplCopyWith<_$CreateFlipcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFlipcardImplCopyWith<$Res> {
  factory _$$DeleteFlipcardImplCopyWith(_$DeleteFlipcardImpl value,
          $Res Function(_$DeleteFlipcardImpl) then) =
      __$$DeleteFlipcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteFlipcardImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewEventCopyWithImpl<$Res, _$DeleteFlipcardImpl>
    implements _$$DeleteFlipcardImplCopyWith<$Res> {
  __$$DeleteFlipcardImplCopyWithImpl(
      _$DeleteFlipcardImpl _value, $Res Function(_$DeleteFlipcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteFlipcardImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFlipcardImpl implements _DeleteFlipcard {
  const _$DeleteFlipcardImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FlipcardsOverviewEvent.deleteFlipcard(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFlipcardImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFlipcardImplCopyWith<_$DeleteFlipcardImpl> get copyWith =>
      __$$DeleteFlipcardImplCopyWithImpl<_$DeleteFlipcardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlipcardViewModel flipcard) createFlipcard,
    required TResult Function(String id) deleteFlipcard,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return deleteFlipcard(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult? Function(String id)? deleteFlipcard,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return deleteFlipcard?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult Function(String id)? deleteFlipcard,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (deleteFlipcard != null) {
      return deleteFlipcard(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFlipcard value) createFlipcard,
    required TResult Function(_DeleteFlipcard value) deleteFlipcard,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return deleteFlipcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFlipcard value)? createFlipcard,
    TResult? Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return deleteFlipcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFlipcard value)? createFlipcard,
    TResult Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (deleteFlipcard != null) {
      return deleteFlipcard(this);
    }
    return orElse();
  }
}

abstract class _DeleteFlipcard implements FlipcardsOverviewEvent {
  const factory _DeleteFlipcard(final String id) = _$DeleteFlipcardImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteFlipcardImplCopyWith<_$DeleteFlipcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FlipcardsOverviewEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlipcardViewModel flipcard) createFlipcard,
    required TResult Function(String id) deleteFlipcard,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult? Function(String id)? deleteFlipcard,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult Function(String id)? deleteFlipcard,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFlipcard value) createFlipcard,
    required TResult Function(_DeleteFlipcard value) deleteFlipcard,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFlipcard value)? createFlipcard,
    TResult? Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFlipcard value)? createFlipcard,
    TResult Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FlipcardsOverviewEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubscribeImplCopyWith<$Res> {
  factory _$$SubscribeImplCopyWith(
          _$SubscribeImpl value, $Res Function(_$SubscribeImpl) then) =
      __$$SubscribeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewEventCopyWithImpl<$Res, _$SubscribeImpl>
    implements _$$SubscribeImplCopyWith<$Res> {
  __$$SubscribeImplCopyWithImpl(
      _$SubscribeImpl _value, $Res Function(_$SubscribeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscribeImpl implements _Subscribe {
  const _$SubscribeImpl();

  @override
  String toString() {
    return 'FlipcardsOverviewEvent.subscribe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscribeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlipcardViewModel flipcard) createFlipcard,
    required TResult Function(String id) deleteFlipcard,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult? Function(String id)? deleteFlipcard,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlipcardViewModel flipcard)? createFlipcard,
    TResult Function(String id)? deleteFlipcard,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFlipcard value) createFlipcard,
    required TResult Function(_DeleteFlipcard value) deleteFlipcard,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFlipcard value)? createFlipcard,
    TResult? Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFlipcard value)? createFlipcard,
    TResult Function(_DeleteFlipcard value)? deleteFlipcard,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements FlipcardsOverviewEvent {
  const factory _Subscribe() = _$SubscribeImpl;
}

/// @nodoc
mixin _$FlipcardsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlipcardViewModel> flipcards) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlipcardViewModel> flipcards)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlipcardViewModel> flipcards)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlipcardsOverviewStateCopyWith<$Res> {
  factory $FlipcardsOverviewStateCopyWith(FlipcardsOverviewState value,
          $Res Function(FlipcardsOverviewState) then) =
      _$FlipcardsOverviewStateCopyWithImpl<$Res, FlipcardsOverviewState>;
}

/// @nodoc
class _$FlipcardsOverviewStateCopyWithImpl<$Res,
        $Val extends FlipcardsOverviewState>
    implements $FlipcardsOverviewStateCopyWith<$Res> {
  _$FlipcardsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'FlipcardsOverviewState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlipcardViewModel> flipcards) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlipcardViewModel> flipcards)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlipcardViewModel> flipcards)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FlipcardsOverviewState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FlipcardsOverviewState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlipcardViewModel> flipcards) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlipcardViewModel> flipcards)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlipcardViewModel> flipcards)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FlipcardsOverviewState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FlipcardsOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlipcardViewModel> flipcards) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlipcardViewModel> flipcards)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlipcardViewModel> flipcards)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FlipcardsOverviewState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FlipcardViewModel> flipcards});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$FlipcardsOverviewStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flipcards = null,
  }) {
    return _then(_$SuccessImpl(
      null == flipcards
          ? _value._flipcards
          : flipcards // ignore: cast_nullable_to_non_nullable
              as List<FlipcardViewModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<FlipcardViewModel> flipcards)
      : _flipcards = flipcards;

  final List<FlipcardViewModel> _flipcards;
  @override
  List<FlipcardViewModel> get flipcards {
    if (_flipcards is EqualUnmodifiableListView) return _flipcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flipcards);
  }

  @override
  String toString() {
    return 'FlipcardsOverviewState.success(flipcards: $flipcards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._flipcards, _flipcards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_flipcards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlipcardViewModel> flipcards) success,
  }) {
    return success(flipcards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlipcardViewModel> flipcards)? success,
  }) {
    return success?.call(flipcards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlipcardViewModel> flipcards)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(flipcards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FlipcardsOverviewState {
  const factory _Success(final List<FlipcardViewModel> flipcards) =
      _$SuccessImpl;

  List<FlipcardViewModel> get flipcards;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
