// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<T, $Res> {
  factory $BaseStateCopyWith(
          BaseState<T> value, $Res Function(BaseState<T>) then) =
      _$BaseStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<T, $Res> implements $BaseStateCopyWith<T, $Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  final BaseState<T> _value;
  // ignore: unused_field
  final $Res Function(BaseState<T>) _then;
}

/// @nodoc
abstract class _$$_initCopyWith<T, $Res> {
  factory _$$_initCopyWith(_$_init<T> value, $Res Function(_$_init<T>) then) =
      __$$_initCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_initCopyWithImpl<T, $Res> extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$_initCopyWith<T, $Res> {
  __$$_initCopyWithImpl(_$_init<T> _value, $Res Function(_$_init<T>) _then)
      : super(_value, (v) => _then(v as _$_init<T>));

  @override
  _$_init<T> get _value => super._value as _$_init<T>;
}

/// @nodoc

class _$_init<T> extends _init<T> {
  const _$_init() : super._();

  @override
  String toString() {
    return 'BaseState<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_init<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _init<T> extends BaseState<T> {
  const factory _init() = _$_init<T>;
  const _init._() : super._();
}

/// @nodoc
abstract class _$$_loadingCopyWith<T, $Res> {
  factory _$$_loadingCopyWith(
          _$_loading<T> value, $Res Function(_$_loading<T>) then) =
      __$$_loadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<T, $Res> extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$_loadingCopyWith<T, $Res> {
  __$$_loadingCopyWithImpl(
      _$_loading<T> _value, $Res Function(_$_loading<T>) _then)
      : super(_value, (v) => _then(v as _$_loading<T>));

  @override
  _$_loading<T> get _value => super._value as _$_loading<T>;
}

/// @nodoc

class _$_loading<T> extends _loading<T> {
  const _$_loading() : super._();

  @override
  String toString() {
    return 'BaseState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading<T> extends BaseState<T> {
  const factory _loading() = _$_loading<T>;
  const _loading._() : super._();
}

/// @nodoc
abstract class _$$_successCopyWith<T, $Res> {
  factory _$$_successCopyWith(
          _$_success<T> value, $Res Function(_$_success<T>) then) =
      __$$_successCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$_successCopyWithImpl<T, $Res> extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$_successCopyWith<T, $Res> {
  __$$_successCopyWithImpl(
      _$_success<T> _value, $Res Function(_$_success<T>) _then)
      : super(_value, (v) => _then(v as _$_success<T>));

  @override
  _$_success<T> get _value => super._value as _$_success<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_success<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_success<T> extends _success<T> {
  const _$_success(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'BaseState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_successCopyWith<T, _$_success<T>> get copyWith =>
      __$$_successCopyWithImpl<T, _$_success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success<T> extends BaseState<T> {
  const factory _success(final T data) = _$_success<T>;
  const _success._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_successCopyWith<T, _$_success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCopyWith<T, $Res> {
  factory _$$_errorCopyWith(
          _$_error<T> value, $Res Function(_$_error<T>) then) =
      __$$_errorCopyWithImpl<T, $Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$_errorCopyWithImpl<T, $Res> extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$_errorCopyWith<T, $Res> {
  __$$_errorCopyWithImpl(_$_error<T> _value, $Res Function(_$_error<T>) _then)
      : super(_value, (v) => _then(v as _$_error<T>));

  @override
  _$_error<T> get _value => super._value as _$_error<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_error<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_error<T> extends _error<T> {
  const _$_error(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'BaseState<$T>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_error<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_errorCopyWith<T, _$_error<T>> get copyWith =>
      __$$_errorCopyWithImpl<T, _$_error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_init<T> value) init,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_success<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_init<T> value)? init,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_success<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error<T> extends BaseState<T> {
  const factory _error(final Failure failure) = _$_error<T>;
  const _error._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_errorCopyWith<T, _$_error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
