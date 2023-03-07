// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScanCode code) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScanCode code)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScanCode code)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
    TResult? Function(HomeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatesCopyWith<$Res> {
  factory $HomeStatesCopyWith(
          HomeStates value, $Res Function(HomeStates) then) =
      _$HomeStatesCopyWithImpl<$Res, HomeStates>;
}

/// @nodoc
class _$HomeStatesCopyWithImpl<$Res, $Val extends HomeStates>
    implements $HomeStatesCopyWith<$Res> {
  _$HomeStatesCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialStateCopyWith<$Res> {
  factory _$$HomeInitialStateCopyWith(
          _$HomeInitialState value, $Res Function(_$HomeInitialState) then) =
      __$$HomeInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialStateCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$HomeInitialState>
    implements _$$HomeInitialStateCopyWith<$Res> {
  __$$HomeInitialStateCopyWithImpl(
      _$HomeInitialState _value, $Res Function(_$HomeInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitialState implements HomeInitialState {
  const _$HomeInitialState();

  @override
  String toString() {
    return 'HomeStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScanCode code) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScanCode code)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScanCode code)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
    TResult? Function(HomeErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitialState implements HomeStates {
  const factory HomeInitialState() = _$HomeInitialState;
}

/// @nodoc
abstract class _$$HomeLoadingStateCopyWith<$Res> {
  factory _$$HomeLoadingStateCopyWith(
          _$HomeLoadingState value, $Res Function(_$HomeLoadingState) then) =
      __$$HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$HomeLoadingState>
    implements _$$HomeLoadingStateCopyWith<$Res> {
  __$$HomeLoadingStateCopyWithImpl(
      _$HomeLoadingState _value, $Res Function(_$HomeLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingState implements HomeLoadingState {
  const _$HomeLoadingState();

  @override
  String toString() {
    return 'HomeStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScanCode code) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScanCode code)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScanCode code)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
    TResult? Function(HomeErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingState implements HomeStates {
  const factory HomeLoadingState() = _$HomeLoadingState;
}

/// @nodoc
abstract class _$$HomeLoadedStateCopyWith<$Res> {
  factory _$$HomeLoadedStateCopyWith(
          _$HomeLoadedState value, $Res Function(_$HomeLoadedState) then) =
      __$$HomeLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ScanCode code});
}

/// @nodoc
class __$$HomeLoadedStateCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$HomeLoadedState>
    implements _$$HomeLoadedStateCopyWith<$Res> {
  __$$HomeLoadedStateCopyWithImpl(
      _$HomeLoadedState _value, $Res Function(_$HomeLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$HomeLoadedState(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ScanCode,
    ));
  }
}

/// @nodoc

class _$HomeLoadedState implements HomeLoadedState {
  const _$HomeLoadedState({required this.code});

  @override
  final ScanCode code;

  @override
  String toString() {
    return 'HomeStates.loaded(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedState &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedStateCopyWith<_$HomeLoadedState> get copyWith =>
      __$$HomeLoadedStateCopyWithImpl<_$HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScanCode code) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScanCode code)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScanCode code)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
    TResult? Function(HomeErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoadedState implements HomeStates {
  const factory HomeLoadedState({required final ScanCode code}) =
      _$HomeLoadedState;

  ScanCode get code;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateCopyWith<_$HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorStateCopyWith<$Res> {
  factory _$$HomeErrorStateCopyWith(
          _$HomeErrorState value, $Res Function(_$HomeErrorState) then) =
      __$$HomeErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$HomeErrorStateCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$HomeErrorState>
    implements _$$HomeErrorStateCopyWith<$Res> {
  __$$HomeErrorStateCopyWithImpl(
      _$HomeErrorState _value, $Res Function(_$HomeErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$HomeErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeErrorState implements HomeErrorState {
  const _$HomeErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeStates.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorStateCopyWith<_$HomeErrorState> get copyWith =>
      __$$HomeErrorStateCopyWithImpl<_$HomeErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScanCode code) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScanCode code)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScanCode code)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
    TResult? Function(HomeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeErrorState implements HomeStates {
  const factory HomeErrorState({required final String errorMessage}) =
      _$HomeErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$HomeErrorStateCopyWith<_$HomeErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
