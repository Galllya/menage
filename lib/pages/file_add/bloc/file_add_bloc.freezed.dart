// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileAddEventTearOff {
  const _$FileAddEventTearOff();

  _Started started() {
    return const _Started();
  }

  _load load() {
    return const _load();
  }

  _AddFile addFile(FileLoadModel fileModel) {
    return _AddFile(
      fileModel,
    );
  }
}

/// @nodoc
const $FileAddEvent = _$FileAddEventTearOff();

/// @nodoc
mixin _$FileAddEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(FileLoadModel fileModel) addFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_load value) load,
    required TResult Function(_AddFile value) addFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileAddEventCopyWith<$Res> {
  factory $FileAddEventCopyWith(
          FileAddEvent value, $Res Function(FileAddEvent) then) =
      _$FileAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileAddEventCopyWithImpl<$Res> implements $FileAddEventCopyWith<$Res> {
  _$FileAddEventCopyWithImpl(this._value, this._then);

  final FileAddEvent _value;
  // ignore: unused_field
  final $Res Function(FileAddEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$FileAddEventCopyWithImpl<$Res>
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
    return 'FileAddEvent.started()';
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
    required TResult Function() load,
    required TResult Function(FileLoadModel fileModel) addFile,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
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
    required TResult Function(_load value) load,
    required TResult Function(_AddFile value) addFile,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FileAddEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$loadCopyWith<$Res> {
  factory _$loadCopyWith(_load value, $Res Function(_load) then) =
      __$loadCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadCopyWithImpl<$Res> extends _$FileAddEventCopyWithImpl<$Res>
    implements _$loadCopyWith<$Res> {
  __$loadCopyWithImpl(_load _value, $Res Function(_load) _then)
      : super(_value, (v) => _then(v as _load));

  @override
  _load get _value => super._value as _load;
}

/// @nodoc

class _$_load implements _load {
  const _$_load();

  @override
  String toString() {
    return 'FileAddEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(FileLoadModel fileModel) addFile,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_load value) load,
    required TResult Function(_AddFile value) addFile,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _load implements FileAddEvent {
  const factory _load() = _$_load;
}

/// @nodoc
abstract class _$AddFileCopyWith<$Res> {
  factory _$AddFileCopyWith(_AddFile value, $Res Function(_AddFile) then) =
      __$AddFileCopyWithImpl<$Res>;
  $Res call({FileLoadModel fileModel});
}

/// @nodoc
class __$AddFileCopyWithImpl<$Res> extends _$FileAddEventCopyWithImpl<$Res>
    implements _$AddFileCopyWith<$Res> {
  __$AddFileCopyWithImpl(_AddFile _value, $Res Function(_AddFile) _then)
      : super(_value, (v) => _then(v as _AddFile));

  @override
  _AddFile get _value => super._value as _AddFile;

  @override
  $Res call({
    Object? fileModel = freezed,
  }) {
    return _then(_AddFile(
      fileModel == freezed
          ? _value.fileModel
          : fileModel // ignore: cast_nullable_to_non_nullable
              as FileLoadModel,
    ));
  }
}

/// @nodoc

class _$_AddFile implements _AddFile {
  const _$_AddFile(this.fileModel);

  @override
  final FileLoadModel fileModel;

  @override
  String toString() {
    return 'FileAddEvent.addFile(fileModel: $fileModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFile &&
            (identical(other.fileModel, fileModel) ||
                const DeepCollectionEquality()
                    .equals(other.fileModel, fileModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fileModel);

  @JsonKey(ignore: true)
  @override
  _$AddFileCopyWith<_AddFile> get copyWith =>
      __$AddFileCopyWithImpl<_AddFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() load,
    required TResult Function(FileLoadModel fileModel) addFile,
  }) {
    return addFile(fileModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
  }) {
    return addFile?.call(fileModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? load,
    TResult Function(FileLoadModel fileModel)? addFile,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(fileModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_load value) load,
    required TResult Function(_AddFile value) addFile,
  }) {
    return addFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
  }) {
    return addFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_load value)? load,
    TResult Function(_AddFile value)? addFile,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(this);
    }
    return orElse();
  }
}

abstract class _AddFile implements FileAddEvent {
  const factory _AddFile(FileLoadModel fileModel) = _$_AddFile;

  FileLoadModel get fileModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddFileCopyWith<_AddFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FileAddStateTearOff {
  const _$FileAddStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded({required List<InfoDataTypeModel> types}) {
    return _Loaded(
      types: types,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error() {
    return const _Error();
  }

  _SuccessAdd successAdd() {
    return const _SuccessAdd();
  }

  _ProcessingAdd processingAdd() {
    return const _ProcessingAdd();
  }

  _ErrorAdd errorAdd() {
    return const _ErrorAdd();
  }
}

/// @nodoc
const $FileAddState = _$FileAddStateTearOff();

/// @nodoc
mixin _$FileAddState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileAddStateCopyWith<$Res> {
  factory $FileAddStateCopyWith(
          FileAddState value, $Res Function(FileAddState) then) =
      _$FileAddStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileAddStateCopyWithImpl<$Res> implements $FileAddStateCopyWith<$Res> {
  _$FileAddStateCopyWithImpl(this._value, this._then);

  final FileAddState _value;
  // ignore: unused_field
  final $Res Function(FileAddState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FileAddStateCopyWithImpl<$Res>
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
    return 'FileAddState.initial()';
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
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FileAddState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<InfoDataTypeModel> types});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$FileAddStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? types = freezed,
  }) {
    return _then(_Loaded(
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<InfoDataTypeModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.types});

  @override
  final List<InfoDataTypeModel> types;

  @override
  String toString() {
    return 'FileAddState.loaded(types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(types);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return loaded(types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return loaded?.call(types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FileAddState {
  const factory _Loaded({required List<InfoDataTypeModel> types}) = _$_Loaded;

  List<InfoDataTypeModel> get types => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$FileAddStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FileAddState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FileAddState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$FileAddStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'FileAddState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FileAddState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$SuccessAddCopyWith<$Res> {
  factory _$SuccessAddCopyWith(
          _SuccessAdd value, $Res Function(_SuccessAdd) then) =
      __$SuccessAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessAddCopyWithImpl<$Res> extends _$FileAddStateCopyWithImpl<$Res>
    implements _$SuccessAddCopyWith<$Res> {
  __$SuccessAddCopyWithImpl(
      _SuccessAdd _value, $Res Function(_SuccessAdd) _then)
      : super(_value, (v) => _then(v as _SuccessAdd));

  @override
  _SuccessAdd get _value => super._value as _SuccessAdd;
}

/// @nodoc

class _$_SuccessAdd implements _SuccessAdd {
  const _$_SuccessAdd();

  @override
  String toString() {
    return 'FileAddState.successAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return successAdd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return successAdd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
    required TResult orElse(),
  }) {
    if (successAdd != null) {
      return successAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return successAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return successAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (successAdd != null) {
      return successAdd(this);
    }
    return orElse();
  }
}

abstract class _SuccessAdd implements FileAddState {
  const factory _SuccessAdd() = _$_SuccessAdd;
}

/// @nodoc
abstract class _$ProcessingAddCopyWith<$Res> {
  factory _$ProcessingAddCopyWith(
          _ProcessingAdd value, $Res Function(_ProcessingAdd) then) =
      __$ProcessingAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessingAddCopyWithImpl<$Res>
    extends _$FileAddStateCopyWithImpl<$Res>
    implements _$ProcessingAddCopyWith<$Res> {
  __$ProcessingAddCopyWithImpl(
      _ProcessingAdd _value, $Res Function(_ProcessingAdd) _then)
      : super(_value, (v) => _then(v as _ProcessingAdd));

  @override
  _ProcessingAdd get _value => super._value as _ProcessingAdd;
}

/// @nodoc

class _$_ProcessingAdd implements _ProcessingAdd {
  const _$_ProcessingAdd();

  @override
  String toString() {
    return 'FileAddState.processingAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProcessingAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return processingAdd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return processingAdd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
    required TResult orElse(),
  }) {
    if (processingAdd != null) {
      return processingAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return processingAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return processingAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (processingAdd != null) {
      return processingAdd(this);
    }
    return orElse();
  }
}

abstract class _ProcessingAdd implements FileAddState {
  const factory _ProcessingAdd() = _$_ProcessingAdd;
}

/// @nodoc
abstract class _$ErrorAddCopyWith<$Res> {
  factory _$ErrorAddCopyWith(_ErrorAdd value, $Res Function(_ErrorAdd) then) =
      __$ErrorAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorAddCopyWithImpl<$Res> extends _$FileAddStateCopyWithImpl<$Res>
    implements _$ErrorAddCopyWith<$Res> {
  __$ErrorAddCopyWithImpl(_ErrorAdd _value, $Res Function(_ErrorAdd) _then)
      : super(_value, (v) => _then(v as _ErrorAdd));

  @override
  _ErrorAdd get _value => super._value as _ErrorAdd;
}

/// @nodoc

class _$_ErrorAdd implements _ErrorAdd {
  const _$_ErrorAdd();

  @override
  String toString() {
    return 'FileAddState.errorAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InfoDataTypeModel> types) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() successAdd,
    required TResult Function() processingAdd,
    required TResult Function() errorAdd,
  }) {
    return errorAdd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
  }) {
    return errorAdd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InfoDataTypeModel> types)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? successAdd,
    TResult Function()? processingAdd,
    TResult Function()? errorAdd,
    required TResult orElse(),
  }) {
    if (errorAdd != null) {
      return errorAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAdd value) successAdd,
    required TResult Function(_ProcessingAdd value) processingAdd,
    required TResult Function(_ErrorAdd value) errorAdd,
  }) {
    return errorAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
  }) {
    return errorAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAdd value)? successAdd,
    TResult Function(_ProcessingAdd value)? processingAdd,
    TResult Function(_ErrorAdd value)? errorAdd,
    required TResult orElse(),
  }) {
    if (errorAdd != null) {
      return errorAdd(this);
    }
    return orElse();
  }
}

abstract class _ErrorAdd implements FileAddState {
  const factory _ErrorAdd() = _$_ErrorAdd;
}
