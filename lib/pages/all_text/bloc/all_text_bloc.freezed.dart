// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_text_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllTextEventTearOff {
  const _$AllTextEventTearOff();

  _Started started() {
    return const _Started();
  }

  _startDelete startDelete() {
    return const _startDelete();
  }

  _startUpdate startUpdate(Map<String, dynamic> text) {
    return _startUpdate(
      text,
    );
  }
}

/// @nodoc
const $AllTextEvent = _$AllTextEventTearOff();

/// @nodoc
mixin _$AllTextEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startDelete,
    required TResult Function(Map<String, dynamic> text) startUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_startDelete value) startDelete,
    required TResult Function(_startUpdate value) startUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTextEventCopyWith<$Res> {
  factory $AllTextEventCopyWith(
          AllTextEvent value, $Res Function(AllTextEvent) then) =
      _$AllTextEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllTextEventCopyWithImpl<$Res> implements $AllTextEventCopyWith<$Res> {
  _$AllTextEventCopyWithImpl(this._value, this._then);

  final AllTextEvent _value;
  // ignore: unused_field
  final $Res Function(AllTextEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AllTextEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AllTextEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startDelete,
    required TResult Function(Map<String, dynamic> text) startUpdate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
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
    required TResult Function(_Started value) started,
    required TResult Function(_startDelete value) startDelete,
    required TResult Function(_startUpdate value) startUpdate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AllTextEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$startDeleteCopyWith<$Res> {
  factory _$startDeleteCopyWith(
          _startDelete value, $Res Function(_startDelete) then) =
      __$startDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$startDeleteCopyWithImpl<$Res> extends _$AllTextEventCopyWithImpl<$Res>
    implements _$startDeleteCopyWith<$Res> {
  __$startDeleteCopyWithImpl(
      _startDelete _value, $Res Function(_startDelete) _then)
      : super(_value, (v) => _then(v as _startDelete));

  @override
  _startDelete get _value => super._value as _startDelete;
}

/// @nodoc

class _$_startDelete implements _startDelete {
  const _$_startDelete();

  @override
  String toString() {
    return 'AllTextEvent.startDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _startDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startDelete,
    required TResult Function(Map<String, dynamic> text) startUpdate,
  }) {
    return startDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
  }) {
    return startDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
    required TResult orElse(),
  }) {
    if (startDelete != null) {
      return startDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_startDelete value) startDelete,
    required TResult Function(_startUpdate value) startUpdate,
  }) {
    return startDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
  }) {
    return startDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
    required TResult orElse(),
  }) {
    if (startDelete != null) {
      return startDelete(this);
    }
    return orElse();
  }
}

abstract class _startDelete implements AllTextEvent {
  const factory _startDelete() = _$_startDelete;
}

/// @nodoc
abstract class _$startUpdateCopyWith<$Res> {
  factory _$startUpdateCopyWith(
          _startUpdate value, $Res Function(_startUpdate) then) =
      __$startUpdateCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> text});
}

/// @nodoc
class __$startUpdateCopyWithImpl<$Res> extends _$AllTextEventCopyWithImpl<$Res>
    implements _$startUpdateCopyWith<$Res> {
  __$startUpdateCopyWithImpl(
      _startUpdate _value, $Res Function(_startUpdate) _then)
      : super(_value, (v) => _then(v as _startUpdate));

  @override
  _startUpdate get _value => super._value as _startUpdate;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_startUpdate(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_startUpdate implements _startUpdate {
  const _$_startUpdate(this.text);

  @override
  final Map<String, dynamic> text;

  @override
  String toString() {
    return 'AllTextEvent.startUpdate(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _startUpdate &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$startUpdateCopyWith<_startUpdate> get copyWith =>
      __$startUpdateCopyWithImpl<_startUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startDelete,
    required TResult Function(Map<String, dynamic> text) startUpdate,
  }) {
    return startUpdate(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
  }) {
    return startUpdate?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startDelete,
    TResult Function(Map<String, dynamic> text)? startUpdate,
    required TResult orElse(),
  }) {
    if (startUpdate != null) {
      return startUpdate(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_startDelete value) startDelete,
    required TResult Function(_startUpdate value) startUpdate,
  }) {
    return startUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
  }) {
    return startUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_startDelete value)? startDelete,
    TResult Function(_startUpdate value)? startUpdate,
    required TResult orElse(),
  }) {
    if (startUpdate != null) {
      return startUpdate(this);
    }
    return orElse();
  }
}

abstract class _startUpdate implements AllTextEvent {
  const factory _startUpdate(Map<String, dynamic> text) = _$_startUpdate;

  Map<String, dynamic> get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$startUpdateCopyWith<_startUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AllTextStateTearOff {
  const _$AllTextStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SuccessDelete successDelete() {
    return const _SuccessDelete();
  }

  _ProcessingDelete processingDelete() {
    return const _ProcessingDelete();
  }

  _ErrorDelete errorDelete() {
    return const _ErrorDelete();
  }

  _SuccessUpdate successUpdate() {
    return const _SuccessUpdate();
  }

  _ProcessingUpdate processingUpdate() {
    return const _ProcessingUpdate();
  }

  _ErrorUpdate errorUpdate() {
    return const _ErrorUpdate();
  }
}

/// @nodoc
const $AllTextState = _$AllTextStateTearOff();

/// @nodoc
mixin _$AllTextState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTextStateCopyWith<$Res> {
  factory $AllTextStateCopyWith(
          AllTextState value, $Res Function(AllTextState) then) =
      _$AllTextStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllTextStateCopyWithImpl<$Res> implements $AllTextStateCopyWith<$Res> {
  _$AllTextStateCopyWithImpl(this._value, this._then);

  final AllTextState _value;
  // ignore: unused_field
  final $Res Function(AllTextState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AllTextStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AllTextState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AllTextState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SuccessDeleteCopyWith<$Res> {
  factory _$SuccessDeleteCopyWith(
          _SuccessDelete value, $Res Function(_SuccessDelete) then) =
      __$SuccessDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessDeleteCopyWithImpl<$Res>
    extends _$AllTextStateCopyWithImpl<$Res>
    implements _$SuccessDeleteCopyWith<$Res> {
  __$SuccessDeleteCopyWithImpl(
      _SuccessDelete _value, $Res Function(_SuccessDelete) _then)
      : super(_value, (v) => _then(v as _SuccessDelete));

  @override
  _SuccessDelete get _value => super._value as _SuccessDelete;
}

/// @nodoc

class _$_SuccessDelete implements _SuccessDelete {
  const _$_SuccessDelete();

  @override
  String toString() {
    return 'AllTextState.successDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return successDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return successDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return successDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return successDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(this);
    }
    return orElse();
  }
}

abstract class _SuccessDelete implements AllTextState {
  const factory _SuccessDelete() = _$_SuccessDelete;
}

/// @nodoc
abstract class _$ProcessingDeleteCopyWith<$Res> {
  factory _$ProcessingDeleteCopyWith(
          _ProcessingDelete value, $Res Function(_ProcessingDelete) then) =
      __$ProcessingDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessingDeleteCopyWithImpl<$Res>
    extends _$AllTextStateCopyWithImpl<$Res>
    implements _$ProcessingDeleteCopyWith<$Res> {
  __$ProcessingDeleteCopyWithImpl(
      _ProcessingDelete _value, $Res Function(_ProcessingDelete) _then)
      : super(_value, (v) => _then(v as _ProcessingDelete));

  @override
  _ProcessingDelete get _value => super._value as _ProcessingDelete;
}

/// @nodoc

class _$_ProcessingDelete implements _ProcessingDelete {
  const _$_ProcessingDelete();

  @override
  String toString() {
    return 'AllTextState.processingDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProcessingDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return processingDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return processingDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) {
    if (processingDelete != null) {
      return processingDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return processingDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return processingDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (processingDelete != null) {
      return processingDelete(this);
    }
    return orElse();
  }
}

abstract class _ProcessingDelete implements AllTextState {
  const factory _ProcessingDelete() = _$_ProcessingDelete;
}

/// @nodoc
abstract class _$ErrorDeleteCopyWith<$Res> {
  factory _$ErrorDeleteCopyWith(
          _ErrorDelete value, $Res Function(_ErrorDelete) then) =
      __$ErrorDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorDeleteCopyWithImpl<$Res> extends _$AllTextStateCopyWithImpl<$Res>
    implements _$ErrorDeleteCopyWith<$Res> {
  __$ErrorDeleteCopyWithImpl(
      _ErrorDelete _value, $Res Function(_ErrorDelete) _then)
      : super(_value, (v) => _then(v as _ErrorDelete));

  @override
  _ErrorDelete get _value => super._value as _ErrorDelete;
}

/// @nodoc

class _$_ErrorDelete implements _ErrorDelete {
  const _$_ErrorDelete();

  @override
  String toString() {
    return 'AllTextState.errorDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return errorDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return errorDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) {
    if (errorDelete != null) {
      return errorDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return errorDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return errorDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (errorDelete != null) {
      return errorDelete(this);
    }
    return orElse();
  }
}

abstract class _ErrorDelete implements AllTextState {
  const factory _ErrorDelete() = _$_ErrorDelete;
}

/// @nodoc
abstract class _$SuccessUpdateCopyWith<$Res> {
  factory _$SuccessUpdateCopyWith(
          _SuccessUpdate value, $Res Function(_SuccessUpdate) then) =
      __$SuccessUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessUpdateCopyWithImpl<$Res>
    extends _$AllTextStateCopyWithImpl<$Res>
    implements _$SuccessUpdateCopyWith<$Res> {
  __$SuccessUpdateCopyWithImpl(
      _SuccessUpdate _value, $Res Function(_SuccessUpdate) _then)
      : super(_value, (v) => _then(v as _SuccessUpdate));

  @override
  _SuccessUpdate get _value => super._value as _SuccessUpdate;
}

/// @nodoc

class _$_SuccessUpdate implements _SuccessUpdate {
  const _$_SuccessUpdate();

  @override
  String toString() {
    return 'AllTextState.successUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return successUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return successUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return successUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return successUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdate implements AllTextState {
  const factory _SuccessUpdate() = _$_SuccessUpdate;
}

/// @nodoc
abstract class _$ProcessingUpdateCopyWith<$Res> {
  factory _$ProcessingUpdateCopyWith(
          _ProcessingUpdate value, $Res Function(_ProcessingUpdate) then) =
      __$ProcessingUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessingUpdateCopyWithImpl<$Res>
    extends _$AllTextStateCopyWithImpl<$Res>
    implements _$ProcessingUpdateCopyWith<$Res> {
  __$ProcessingUpdateCopyWithImpl(
      _ProcessingUpdate _value, $Res Function(_ProcessingUpdate) _then)
      : super(_value, (v) => _then(v as _ProcessingUpdate));

  @override
  _ProcessingUpdate get _value => super._value as _ProcessingUpdate;
}

/// @nodoc

class _$_ProcessingUpdate implements _ProcessingUpdate {
  const _$_ProcessingUpdate();

  @override
  String toString() {
    return 'AllTextState.processingUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProcessingUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return processingUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return processingUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) {
    if (processingUpdate != null) {
      return processingUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return processingUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return processingUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (processingUpdate != null) {
      return processingUpdate(this);
    }
    return orElse();
  }
}

abstract class _ProcessingUpdate implements AllTextState {
  const factory _ProcessingUpdate() = _$_ProcessingUpdate;
}

/// @nodoc
abstract class _$ErrorUpdateCopyWith<$Res> {
  factory _$ErrorUpdateCopyWith(
          _ErrorUpdate value, $Res Function(_ErrorUpdate) then) =
      __$ErrorUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorUpdateCopyWithImpl<$Res> extends _$AllTextStateCopyWithImpl<$Res>
    implements _$ErrorUpdateCopyWith<$Res> {
  __$ErrorUpdateCopyWithImpl(
      _ErrorUpdate _value, $Res Function(_ErrorUpdate) _then)
      : super(_value, (v) => _then(v as _ErrorUpdate));

  @override
  _ErrorUpdate get _value => super._value as _ErrorUpdate;
}

/// @nodoc

class _$_ErrorUpdate implements _ErrorUpdate {
  const _$_ErrorUpdate();

  @override
  String toString() {
    return 'AllTextState.errorUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() successDelete,
    required TResult Function() processingDelete,
    required TResult Function() errorDelete,
    required TResult Function() successUpdate,
    required TResult Function() processingUpdate,
    required TResult Function() errorUpdate,
  }) {
    return errorUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
  }) {
    return errorUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? successDelete,
    TResult Function()? processingDelete,
    TResult Function()? errorDelete,
    TResult Function()? successUpdate,
    TResult Function()? processingUpdate,
    TResult Function()? errorUpdate,
    required TResult orElse(),
  }) {
    if (errorUpdate != null) {
      return errorUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_ProcessingDelete value) processingDelete,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_ProcessingUpdate value) processingUpdate,
    required TResult Function(_ErrorUpdate value) errorUpdate,
  }) {
    return errorUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
  }) {
    return errorUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_ProcessingDelete value)? processingDelete,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_ProcessingUpdate value)? processingUpdate,
    TResult Function(_ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    if (errorUpdate != null) {
      return errorUpdate(this);
    }
    return orElse();
  }
}

abstract class _ErrorUpdate implements AllTextState {
  const factory _ErrorUpdate() = _$_ErrorUpdate;
}
