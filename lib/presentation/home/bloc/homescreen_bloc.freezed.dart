// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homescreen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomescreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(String? routeName) onClickedButtons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(String? routeName)? onClickedButtons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String? routeName)? onClickedButtons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnClickedButtons value) onClickedButtons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnClickedButtons value)? onClickedButtons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnClickedButtons value)? onClickedButtons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomescreenEventCopyWith<$Res> {
  factory $HomescreenEventCopyWith(
          HomescreenEvent value, $Res Function(HomescreenEvent) then) =
      _$HomescreenEventCopyWithImpl<$Res, HomescreenEvent>;
}

/// @nodoc
class _$HomescreenEventCopyWithImpl<$Res, $Val extends HomescreenEvent>
    implements $HomescreenEventCopyWith<$Res> {
  _$HomescreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnLoadImplCopyWith<$Res> {
  factory _$$OnLoadImplCopyWith(
          _$OnLoadImpl value, $Res Function(_$OnLoadImpl) then) =
      __$$OnLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadImplCopyWithImpl<$Res>
    extends _$HomescreenEventCopyWithImpl<$Res, _$OnLoadImpl>
    implements _$$OnLoadImplCopyWith<$Res> {
  __$$OnLoadImplCopyWithImpl(
      _$OnLoadImpl _value, $Res Function(_$OnLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoadImpl implements _OnLoad {
  const _$OnLoadImpl();

  @override
  String toString() {
    return 'HomescreenEvent.onLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(String? routeName) onClickedButtons,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(String? routeName)? onClickedButtons,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String? routeName)? onClickedButtons,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnClickedButtons value) onClickedButtons,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnClickedButtons value)? onClickedButtons,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnClickedButtons value)? onClickedButtons,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class _OnLoad implements HomescreenEvent {
  const factory _OnLoad() = _$OnLoadImpl;
}

/// @nodoc
abstract class _$$OnClickedButtonsImplCopyWith<$Res> {
  factory _$$OnClickedButtonsImplCopyWith(_$OnClickedButtonsImpl value,
          $Res Function(_$OnClickedButtonsImpl) then) =
      __$$OnClickedButtonsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? routeName});
}

/// @nodoc
class __$$OnClickedButtonsImplCopyWithImpl<$Res>
    extends _$HomescreenEventCopyWithImpl<$Res, _$OnClickedButtonsImpl>
    implements _$$OnClickedButtonsImplCopyWith<$Res> {
  __$$OnClickedButtonsImplCopyWithImpl(_$OnClickedButtonsImpl _value,
      $Res Function(_$OnClickedButtonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = freezed,
  }) {
    return _then(_$OnClickedButtonsImpl(
      freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnClickedButtonsImpl implements _OnClickedButtons {
  const _$OnClickedButtonsImpl(this.routeName);

  @override
  final String? routeName;

  @override
  String toString() {
    return 'HomescreenEvent.onClickedButtons(routeName: $routeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnClickedButtonsImpl &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnClickedButtonsImplCopyWith<_$OnClickedButtonsImpl> get copyWith =>
      __$$OnClickedButtonsImplCopyWithImpl<_$OnClickedButtonsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(String? routeName) onClickedButtons,
  }) {
    return onClickedButtons(routeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(String? routeName)? onClickedButtons,
  }) {
    return onClickedButtons?.call(routeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String? routeName)? onClickedButtons,
    required TResult orElse(),
  }) {
    if (onClickedButtons != null) {
      return onClickedButtons(routeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnClickedButtons value) onClickedButtons,
  }) {
    return onClickedButtons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnClickedButtons value)? onClickedButtons,
  }) {
    return onClickedButtons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnClickedButtons value)? onClickedButtons,
    required TResult orElse(),
  }) {
    if (onClickedButtons != null) {
      return onClickedButtons(this);
    }
    return orElse();
  }
}

abstract class _OnClickedButtons implements HomescreenEvent {
  const factory _OnClickedButtons(final String? routeName) =
      _$OnClickedButtonsImpl;

  String? get routeName;
  @JsonKey(ignore: true)
  _$$OnClickedButtonsImplCopyWith<_$OnClickedButtonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomescreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<HomeButtonModel> buttons) onLoadState,
    required TResult Function(String routeName) routeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult? Function(String routeName)? routeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult Function(String routeName)? routeChangeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoadState value) onLoadState,
    required TResult Function(_RouteChangeState value) routeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnLoadState value)? onLoadState,
    TResult? Function(_RouteChangeState value)? routeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoadState value)? onLoadState,
    TResult Function(_RouteChangeState value)? routeChangeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomescreenStateCopyWith<$Res> {
  factory $HomescreenStateCopyWith(
          HomescreenState value, $Res Function(HomescreenState) then) =
      _$HomescreenStateCopyWithImpl<$Res, HomescreenState>;
}

/// @nodoc
class _$HomescreenStateCopyWithImpl<$Res, $Val extends HomescreenState>
    implements $HomescreenStateCopyWith<$Res> {
  _$HomescreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomescreenStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomescreenState.initial()';
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
    required TResult Function() initial,
    required TResult Function(List<HomeButtonModel> buttons) onLoadState,
    required TResult Function(String routeName) routeChangeState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult? Function(String routeName)? routeChangeState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult Function(String routeName)? routeChangeState,
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
    required TResult Function(_OnLoadState value) onLoadState,
    required TResult Function(_RouteChangeState value) routeChangeState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnLoadState value)? onLoadState,
    TResult? Function(_RouteChangeState value)? routeChangeState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoadState value)? onLoadState,
    TResult Function(_RouteChangeState value)? routeChangeState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomescreenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnLoadStateImplCopyWith<$Res> {
  factory _$$OnLoadStateImplCopyWith(
          _$OnLoadStateImpl value, $Res Function(_$OnLoadStateImpl) then) =
      __$$OnLoadStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HomeButtonModel> buttons});
}

/// @nodoc
class __$$OnLoadStateImplCopyWithImpl<$Res>
    extends _$HomescreenStateCopyWithImpl<$Res, _$OnLoadStateImpl>
    implements _$$OnLoadStateImplCopyWith<$Res> {
  __$$OnLoadStateImplCopyWithImpl(
      _$OnLoadStateImpl _value, $Res Function(_$OnLoadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = null,
  }) {
    return _then(_$OnLoadStateImpl(
      buttons: null == buttons
          ? _value._buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<HomeButtonModel>,
    ));
  }
}

/// @nodoc

class _$OnLoadStateImpl implements _OnLoadState {
  const _$OnLoadStateImpl({required final List<HomeButtonModel> buttons})
      : _buttons = buttons;

  final List<HomeButtonModel> _buttons;
  @override
  List<HomeButtonModel> get buttons {
    if (_buttons is EqualUnmodifiableListView) return _buttons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buttons);
  }

  @override
  String toString() {
    return 'HomescreenState.onLoadState(buttons: $buttons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoadStateImpl &&
            const DeepCollectionEquality().equals(other._buttons, _buttons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_buttons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoadStateImplCopyWith<_$OnLoadStateImpl> get copyWith =>
      __$$OnLoadStateImplCopyWithImpl<_$OnLoadStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<HomeButtonModel> buttons) onLoadState,
    required TResult Function(String routeName) routeChangeState,
  }) {
    return onLoadState(buttons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult? Function(String routeName)? routeChangeState,
  }) {
    return onLoadState?.call(buttons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult Function(String routeName)? routeChangeState,
    required TResult orElse(),
  }) {
    if (onLoadState != null) {
      return onLoadState(buttons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoadState value) onLoadState,
    required TResult Function(_RouteChangeState value) routeChangeState,
  }) {
    return onLoadState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnLoadState value)? onLoadState,
    TResult? Function(_RouteChangeState value)? routeChangeState,
  }) {
    return onLoadState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoadState value)? onLoadState,
    TResult Function(_RouteChangeState value)? routeChangeState,
    required TResult orElse(),
  }) {
    if (onLoadState != null) {
      return onLoadState(this);
    }
    return orElse();
  }
}

abstract class _OnLoadState implements HomescreenState {
  const factory _OnLoadState({required final List<HomeButtonModel> buttons}) =
      _$OnLoadStateImpl;

  List<HomeButtonModel> get buttons;
  @JsonKey(ignore: true)
  _$$OnLoadStateImplCopyWith<_$OnLoadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteChangeStateImplCopyWith<$Res> {
  factory _$$RouteChangeStateImplCopyWith(_$RouteChangeStateImpl value,
          $Res Function(_$RouteChangeStateImpl) then) =
      __$$RouteChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeName});
}

/// @nodoc
class __$$RouteChangeStateImplCopyWithImpl<$Res>
    extends _$HomescreenStateCopyWithImpl<$Res, _$RouteChangeStateImpl>
    implements _$$RouteChangeStateImplCopyWith<$Res> {
  __$$RouteChangeStateImplCopyWithImpl(_$RouteChangeStateImpl _value,
      $Res Function(_$RouteChangeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
  }) {
    return _then(_$RouteChangeStateImpl(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteChangeStateImpl implements _RouteChangeState {
  const _$RouteChangeStateImpl({required this.routeName});

  @override
  final String routeName;

  @override
  String toString() {
    return 'HomescreenState.routeChangeState(routeName: $routeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteChangeStateImpl &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteChangeStateImplCopyWith<_$RouteChangeStateImpl> get copyWith =>
      __$$RouteChangeStateImplCopyWithImpl<_$RouteChangeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<HomeButtonModel> buttons) onLoadState,
    required TResult Function(String routeName) routeChangeState,
  }) {
    return routeChangeState(routeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult? Function(String routeName)? routeChangeState,
  }) {
    return routeChangeState?.call(routeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HomeButtonModel> buttons)? onLoadState,
    TResult Function(String routeName)? routeChangeState,
    required TResult orElse(),
  }) {
    if (routeChangeState != null) {
      return routeChangeState(routeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoadState value) onLoadState,
    required TResult Function(_RouteChangeState value) routeChangeState,
  }) {
    return routeChangeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnLoadState value)? onLoadState,
    TResult? Function(_RouteChangeState value)? routeChangeState,
  }) {
    return routeChangeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoadState value)? onLoadState,
    TResult Function(_RouteChangeState value)? routeChangeState,
    required TResult orElse(),
  }) {
    if (routeChangeState != null) {
      return routeChangeState(this);
    }
    return orElse();
  }
}

abstract class _RouteChangeState implements HomescreenState {
  const factory _RouteChangeState({required final String routeName}) =
      _$RouteChangeStateImpl;

  String get routeName;
  @JsonKey(ignore: true)
  _$$RouteChangeStateImplCopyWith<_$RouteChangeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
