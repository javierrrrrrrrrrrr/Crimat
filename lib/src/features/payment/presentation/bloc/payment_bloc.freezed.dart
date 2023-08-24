// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadEventCopyWith<$Res> {
  factory _$$_LoadEventCopyWith(
          _$_LoadEvent value, $Res Function(_$_LoadEvent) then) =
      __$$_LoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_LoadEvent>
    implements _$$_LoadEventCopyWith<$Res> {
  __$$_LoadEventCopyWithImpl(
      _$_LoadEvent _value, $Res Function(_$_LoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent();

  @override
  String toString() {
    return 'PaymentEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
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
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements PaymentEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
abstract class _$$_StartedPhase0EventCopyWith<$Res> {
  factory _$$_StartedPhase0EventCopyWith(_$_StartedPhase0Event value,
          $Res Function(_$_StartedPhase0Event) then) =
      __$$_StartedPhase0EventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedPhase0EventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_StartedPhase0Event>
    implements _$$_StartedPhase0EventCopyWith<$Res> {
  __$$_StartedPhase0EventCopyWithImpl(
      _$_StartedPhase0Event _value, $Res Function(_$_StartedPhase0Event) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartedPhase0Event implements _StartedPhase0Event {
  const _$_StartedPhase0Event();

  @override
  String toString() {
    return 'PaymentEvent.startedPhase0()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartedPhase0Event);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return startedPhase0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase0 != null) {
      return startedPhase0();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return startedPhase0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase0 != null) {
      return startedPhase0(this);
    }
    return orElse();
  }
}

abstract class _StartedPhase0Event implements PaymentEvent {
  const factory _StartedPhase0Event() = _$_StartedPhase0Event;
}

/// @nodoc
abstract class _$$_StartedPhase1EventCopyWith<$Res> {
  factory _$$_StartedPhase1EventCopyWith(_$_StartedPhase1Event value,
          $Res Function(_$_StartedPhase1Event) then) =
      __$$_StartedPhase1EventCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestModel datos});
}

/// @nodoc
class __$$_StartedPhase1EventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_StartedPhase1Event>
    implements _$$_StartedPhase1EventCopyWith<$Res> {
  __$$_StartedPhase1EventCopyWithImpl(
      _$_StartedPhase1Event _value, $Res Function(_$_StartedPhase1Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datos = null,
  }) {
    return _then(_$_StartedPhase1Event(
      datos: null == datos
          ? _value.datos
          : datos // ignore: cast_nullable_to_non_nullable
              as RequestModel,
    ));
  }
}

/// @nodoc

class _$_StartedPhase1Event implements _StartedPhase1Event {
  const _$_StartedPhase1Event({required this.datos});

  @override
  final RequestModel datos;

  @override
  String toString() {
    return 'PaymentEvent.startedPhase1(datos: $datos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedPhase1Event &&
            (identical(other.datos, datos) || other.datos == datos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedPhase1EventCopyWith<_$_StartedPhase1Event> get copyWith =>
      __$$_StartedPhase1EventCopyWithImpl<_$_StartedPhase1Event>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return startedPhase1(datos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase1?.call(datos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase1 != null) {
      return startedPhase1(datos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return startedPhase1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase1 != null) {
      return startedPhase1(this);
    }
    return orElse();
  }
}

abstract class _StartedPhase1Event implements PaymentEvent {
  const factory _StartedPhase1Event({required final RequestModel datos}) =
      _$_StartedPhase1Event;

  RequestModel get datos;
  @JsonKey(ignore: true)
  _$$_StartedPhase1EventCopyWith<_$_StartedPhase1Event> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartedPhase2EventCopyWith<$Res> {
  factory _$$_StartedPhase2EventCopyWith(_$_StartedPhase2Event value,
          $Res Function(_$_StartedPhase2Event) then) =
      __$$_StartedPhase2EventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_StartedPhase2EventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_StartedPhase2Event>
    implements _$$_StartedPhase2EventCopyWith<$Res> {
  __$$_StartedPhase2EventCopyWithImpl(
      _$_StartedPhase2Event _value, $Res Function(_$_StartedPhase2Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_StartedPhase2Event(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_StartedPhase2Event implements _StartedPhase2Event {
  const _$_StartedPhase2Event({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PaymentEvent.startedPhase2(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedPhase2Event &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedPhase2EventCopyWith<_$_StartedPhase2Event> get copyWith =>
      __$$_StartedPhase2EventCopyWithImpl<_$_StartedPhase2Event>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return startedPhase2(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase2?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase2 != null) {
      return startedPhase2(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return startedPhase2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase2 != null) {
      return startedPhase2(this);
    }
    return orElse();
  }
}

abstract class _StartedPhase2Event implements PaymentEvent {
  const factory _StartedPhase2Event({required final BuildContext context}) =
      _$_StartedPhase2Event;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_StartedPhase2EventCopyWith<_$_StartedPhase2Event> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErroroccurredEventCopyWith<$Res> {
  factory _$$_ErroroccurredEventCopyWith(_$_ErroroccurredEvent value,
          $Res Function(_$_ErroroccurredEvent) then) =
      __$$_ErroroccurredEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErroroccurredEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_ErroroccurredEvent>
    implements _$$_ErroroccurredEventCopyWith<$Res> {
  __$$_ErroroccurredEventCopyWithImpl(
      _$_ErroroccurredEvent _value, $Res Function(_$_ErroroccurredEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ErroroccurredEvent implements _ErroroccurredEvent {
  const _$_ErroroccurredEvent();

  @override
  String toString() {
    return 'PaymentEvent.erroroccurred()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ErroroccurredEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return erroroccurred();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return erroroccurred?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (erroroccurred != null) {
      return erroroccurred();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return erroroccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return erroroccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (erroroccurred != null) {
      return erroroccurred(this);
    }
    return orElse();
  }
}

abstract class _ErroroccurredEvent implements PaymentEvent {
  const factory _ErroroccurredEvent() = _$_ErroroccurredEvent;
}

/// @nodoc
abstract class _$$_CompletedEventCopyWith<$Res> {
  factory _$$_CompletedEventCopyWith(
          _$_CompletedEvent value, $Res Function(_$_CompletedEvent) then) =
      __$$_CompletedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_CompletedEvent>
    implements _$$_CompletedEventCopyWith<$Res> {
  __$$_CompletedEventCopyWithImpl(
      _$_CompletedEvent _value, $Res Function(_$_CompletedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CompletedEvent implements _CompletedEvent {
  const _$_CompletedEvent();

  @override
  String toString() {
    return 'PaymentEvent.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CompletedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _CompletedEvent implements PaymentEvent {
  const factory _CompletedEvent() = _$_CompletedEvent;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'PaymentEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements PaymentEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_StartedPhase0WithoutTokenEventCopyWith<$Res> {
  factory _$$_StartedPhase0WithoutTokenEventCopyWith(
          _$_StartedPhase0WithoutTokenEvent value,
          $Res Function(_$_StartedPhase0WithoutTokenEvent) then) =
      __$$_StartedPhase0WithoutTokenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedPhase0WithoutTokenEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_StartedPhase0WithoutTokenEvent>
    implements _$$_StartedPhase0WithoutTokenEventCopyWith<$Res> {
  __$$_StartedPhase0WithoutTokenEventCopyWithImpl(
      _$_StartedPhase0WithoutTokenEvent _value,
      $Res Function(_$_StartedPhase0WithoutTokenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartedPhase0WithoutTokenEvent
    implements _StartedPhase0WithoutTokenEvent {
  const _$_StartedPhase0WithoutTokenEvent();

  @override
  String toString() {
    return 'PaymentEvent.startedPhase0WithoutToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedPhase0WithoutTokenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return startedPhase0WithoutToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase0WithoutToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase0WithoutToken != null) {
      return startedPhase0WithoutToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return startedPhase0WithoutToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase0WithoutToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase0WithoutToken != null) {
      return startedPhase0WithoutToken(this);
    }
    return orElse();
  }
}

abstract class _StartedPhase0WithoutTokenEvent implements PaymentEvent {
  const factory _StartedPhase0WithoutTokenEvent() =
      _$_StartedPhase0WithoutTokenEvent;
}

/// @nodoc
abstract class _$$_StartedPhase1WithoutTokenEventCopyWith<$Res> {
  factory _$$_StartedPhase1WithoutTokenEventCopyWith(
          _$_StartedPhase1WithoutTokenEvent value,
          $Res Function(_$_StartedPhase1WithoutTokenEvent) then) =
      __$$_StartedPhase1WithoutTokenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedPhase1WithoutTokenEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_StartedPhase1WithoutTokenEvent>
    implements _$$_StartedPhase1WithoutTokenEventCopyWith<$Res> {
  __$$_StartedPhase1WithoutTokenEventCopyWithImpl(
      _$_StartedPhase1WithoutTokenEvent _value,
      $Res Function(_$_StartedPhase1WithoutTokenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartedPhase1WithoutTokenEvent
    implements _StartedPhase1WithoutTokenEvent {
  const _$_StartedPhase1WithoutTokenEvent();

  @override
  String toString() {
    return 'PaymentEvent.startedPhase1WithoutToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedPhase1WithoutTokenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return startedPhase1WithoutToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase1WithoutToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase1WithoutToken != null) {
      return startedPhase1WithoutToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return startedPhase1WithoutToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase1WithoutToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase1WithoutToken != null) {
      return startedPhase1WithoutToken(this);
    }
    return orElse();
  }
}

abstract class _StartedPhase1WithoutTokenEvent implements PaymentEvent {
  const factory _StartedPhase1WithoutTokenEvent() =
      _$_StartedPhase1WithoutTokenEvent;
}

/// @nodoc
abstract class _$$_StartedPhase2WithoutTokenEventCopyWith<$Res> {
  factory _$$_StartedPhase2WithoutTokenEventCopyWith(
          _$_StartedPhase2WithoutTokenEvent value,
          $Res Function(_$_StartedPhase2WithoutTokenEvent) then) =
      __$$_StartedPhase2WithoutTokenEventCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRequestModelWithoutToken datos});
}

/// @nodoc
class __$$_StartedPhase2WithoutTokenEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_StartedPhase2WithoutTokenEvent>
    implements _$$_StartedPhase2WithoutTokenEventCopyWith<$Res> {
  __$$_StartedPhase2WithoutTokenEventCopyWithImpl(
      _$_StartedPhase2WithoutTokenEvent _value,
      $Res Function(_$_StartedPhase2WithoutTokenEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datos = null,
  }) {
    return _then(_$_StartedPhase2WithoutTokenEvent(
      datos: null == datos
          ? _value.datos
          : datos // ignore: cast_nullable_to_non_nullable
              as OrderRequestModelWithoutToken,
    ));
  }
}

/// @nodoc

class _$_StartedPhase2WithoutTokenEvent
    implements _StartedPhase2WithoutTokenEvent {
  const _$_StartedPhase2WithoutTokenEvent({required this.datos});

  @override
  final OrderRequestModelWithoutToken datos;

  @override
  String toString() {
    return 'PaymentEvent.startedPhase2WithoutToken(datos: $datos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedPhase2WithoutTokenEvent &&
            (identical(other.datos, datos) || other.datos == datos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedPhase2WithoutTokenEventCopyWith<_$_StartedPhase2WithoutTokenEvent>
      get copyWith => __$$_StartedPhase2WithoutTokenEventCopyWithImpl<
          _$_StartedPhase2WithoutTokenEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() startedPhase0,
    required TResult Function(RequestModel datos) startedPhase1,
    required TResult Function(BuildContext context) startedPhase2,
    required TResult Function() erroroccurred,
    required TResult Function() completed,
    required TResult Function() signOut,
    required TResult Function() startedPhase0WithoutToken,
    required TResult Function() startedPhase1WithoutToken,
    required TResult Function(OrderRequestModelWithoutToken datos)
        startedPhase2WithoutToken,
  }) {
    return startedPhase2WithoutToken(datos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? startedPhase0,
    TResult? Function(RequestModel datos)? startedPhase1,
    TResult? Function(BuildContext context)? startedPhase2,
    TResult? Function()? erroroccurred,
    TResult? Function()? completed,
    TResult? Function()? signOut,
    TResult? Function()? startedPhase0WithoutToken,
    TResult? Function()? startedPhase1WithoutToken,
    TResult? Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase2WithoutToken?.call(datos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? startedPhase0,
    TResult Function(RequestModel datos)? startedPhase1,
    TResult Function(BuildContext context)? startedPhase2,
    TResult Function()? erroroccurred,
    TResult Function()? completed,
    TResult Function()? signOut,
    TResult Function()? startedPhase0WithoutToken,
    TResult Function()? startedPhase1WithoutToken,
    TResult Function(OrderRequestModelWithoutToken datos)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase2WithoutToken != null) {
      return startedPhase2WithoutToken(datos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_StartedPhase0Event value) startedPhase0,
    required TResult Function(_StartedPhase1Event value) startedPhase1,
    required TResult Function(_StartedPhase2Event value) startedPhase2,
    required TResult Function(_ErroroccurredEvent value) erroroccurred,
    required TResult Function(_CompletedEvent value) completed,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_StartedPhase0WithoutTokenEvent value)
        startedPhase0WithoutToken,
    required TResult Function(_StartedPhase1WithoutTokenEvent value)
        startedPhase1WithoutToken,
    required TResult Function(_StartedPhase2WithoutTokenEvent value)
        startedPhase2WithoutToken,
  }) {
    return startedPhase2WithoutToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_StartedPhase0Event value)? startedPhase0,
    TResult? Function(_StartedPhase1Event value)? startedPhase1,
    TResult? Function(_StartedPhase2Event value)? startedPhase2,
    TResult? Function(_ErroroccurredEvent value)? erroroccurred,
    TResult? Function(_CompletedEvent value)? completed,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult? Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult? Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
  }) {
    return startedPhase2WithoutToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_StartedPhase0Event value)? startedPhase0,
    TResult Function(_StartedPhase1Event value)? startedPhase1,
    TResult Function(_StartedPhase2Event value)? startedPhase2,
    TResult Function(_ErroroccurredEvent value)? erroroccurred,
    TResult Function(_CompletedEvent value)? completed,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_StartedPhase0WithoutTokenEvent value)?
        startedPhase0WithoutToken,
    TResult Function(_StartedPhase1WithoutTokenEvent value)?
        startedPhase1WithoutToken,
    TResult Function(_StartedPhase2WithoutTokenEvent value)?
        startedPhase2WithoutToken,
    required TResult orElse(),
  }) {
    if (startedPhase2WithoutToken != null) {
      return startedPhase2WithoutToken(this);
    }
    return orElse();
  }
}

abstract class _StartedPhase2WithoutTokenEvent implements PaymentEvent {
  const factory _StartedPhase2WithoutTokenEvent(
          {required final OrderRequestModelWithoutToken datos}) =
      _$_StartedPhase2WithoutTokenEvent;

  OrderRequestModelWithoutToken get datos;
  @JsonKey(ignore: true)
  _$$_StartedPhase2WithoutTokenEventCopyWith<_$_StartedPhase2WithoutTokenEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
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
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_Phase0InProgressStateCopyWith<$Res> {
  factory _$$_Phase0InProgressStateCopyWith(_$_Phase0InProgressState value,
          $Res Function(_$_Phase0InProgressState) then) =
      __$$_Phase0InProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase0InProgressStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Phase0InProgressState>
    implements _$$_Phase0InProgressStateCopyWith<$Res> {
  __$$_Phase0InProgressStateCopyWithImpl(_$_Phase0InProgressState _value,
      $Res Function(_$_Phase0InProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase0InProgressState implements _Phase0InProgressState {
  const _$_Phase0InProgressState();

  @override
  String toString() {
    return 'PaymentState.phase0InProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Phase0InProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase0InProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase0InProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0InProgress != null) {
      return phase0InProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase0InProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase0InProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0InProgress != null) {
      return phase0InProgress(this);
    }
    return orElse();
  }
}

abstract class _Phase0InProgressState implements PaymentState {
  const factory _Phase0InProgressState() = _$_Phase0InProgressState;
}

/// @nodoc
abstract class _$$_Phase0ComplatedStateCopyWith<$Res> {
  factory _$$_Phase0ComplatedStateCopyWith(_$_Phase0ComplatedState value,
          $Res Function(_$_Phase0ComplatedState) then) =
      __$$_Phase0ComplatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShippingModel> paymentdata});
}

/// @nodoc
class __$$_Phase0ComplatedStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Phase0ComplatedState>
    implements _$$_Phase0ComplatedStateCopyWith<$Res> {
  __$$_Phase0ComplatedStateCopyWithImpl(_$_Phase0ComplatedState _value,
      $Res Function(_$_Phase0ComplatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentdata = null,
  }) {
    return _then(_$_Phase0ComplatedState(
      paymentdata: null == paymentdata
          ? _value._paymentdata
          : paymentdata // ignore: cast_nullable_to_non_nullable
              as List<ShippingModel>,
    ));
  }
}

/// @nodoc

class _$_Phase0ComplatedState implements _Phase0ComplatedState {
  const _$_Phase0ComplatedState(
      {required final List<ShippingModel> paymentdata})
      : _paymentdata = paymentdata;

  final List<ShippingModel> _paymentdata;
  @override
  List<ShippingModel> get paymentdata {
    if (_paymentdata is EqualUnmodifiableListView) return _paymentdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentdata);
  }

  @override
  String toString() {
    return 'PaymentState.phase0Complated(paymentdata: $paymentdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase0ComplatedState &&
            const DeepCollectionEquality()
                .equals(other._paymentdata, _paymentdata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentdata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Phase0ComplatedStateCopyWith<_$_Phase0ComplatedState> get copyWith =>
      __$$_Phase0ComplatedStateCopyWithImpl<_$_Phase0ComplatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase0Complated(paymentdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase0Complated?.call(paymentdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0Complated != null) {
      return phase0Complated(paymentdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase0Complated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase0Complated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0Complated != null) {
      return phase0Complated(this);
    }
    return orElse();
  }
}

abstract class _Phase0ComplatedState implements PaymentState {
  const factory _Phase0ComplatedState(
          {required final List<ShippingModel> paymentdata}) =
      _$_Phase0ComplatedState;

  List<ShippingModel> get paymentdata;
  @JsonKey(ignore: true)
  _$$_Phase0ComplatedStateCopyWith<_$_Phase0ComplatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_Phase1InProgressStateCopyWith<$Res> {
  factory _$$_Phase1InProgressStateCopyWith(_$_Phase1InProgressState value,
          $Res Function(_$_Phase1InProgressState) then) =
      __$$_Phase1InProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase1InProgressStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Phase1InProgressState>
    implements _$$_Phase1InProgressStateCopyWith<$Res> {
  __$$_Phase1InProgressStateCopyWithImpl(_$_Phase1InProgressState _value,
      $Res Function(_$_Phase1InProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase1InProgressState implements _Phase1InProgressState {
  const _$_Phase1InProgressState();

  @override
  String toString() {
    return 'PaymentState.phase1InProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Phase1InProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase1InProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase1InProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1InProgress != null) {
      return phase1InProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase1InProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase1InProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1InProgress != null) {
      return phase1InProgress(this);
    }
    return orElse();
  }
}

abstract class _Phase1InProgressState implements PaymentState {
  const factory _Phase1InProgressState() = _$_Phase1InProgressState;
}

/// @nodoc
abstract class _$$_Phase1ComplatedStateCopyWith<$Res> {
  factory _$$_Phase1ComplatedStateCopyWith(_$_Phase1ComplatedState value,
          $Res Function(_$_Phase1ComplatedState) then) =
      __$$_Phase1ComplatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel paymentdata});
}

/// @nodoc
class __$$_Phase1ComplatedStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Phase1ComplatedState>
    implements _$$_Phase1ComplatedStateCopyWith<$Res> {
  __$$_Phase1ComplatedStateCopyWithImpl(_$_Phase1ComplatedState _value,
      $Res Function(_$_Phase1ComplatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentdata = null,
  }) {
    return _then(_$_Phase1ComplatedState(
      paymentdata: null == paymentdata
          ? _value.paymentdata
          : paymentdata // ignore: cast_nullable_to_non_nullable
              as PaymentModel,
    ));
  }
}

/// @nodoc

class _$_Phase1ComplatedState implements _Phase1ComplatedState {
  const _$_Phase1ComplatedState({required this.paymentdata});

  @override
  final PaymentModel paymentdata;

  @override
  String toString() {
    return 'PaymentState.phase1Complated(paymentdata: $paymentdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase1ComplatedState &&
            (identical(other.paymentdata, paymentdata) ||
                other.paymentdata == paymentdata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentdata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Phase1ComplatedStateCopyWith<_$_Phase1ComplatedState> get copyWith =>
      __$$_Phase1ComplatedStateCopyWithImpl<_$_Phase1ComplatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase1Complated(paymentdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase1Complated?.call(paymentdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1Complated != null) {
      return phase1Complated(paymentdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase1Complated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase1Complated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1Complated != null) {
      return phase1Complated(this);
    }
    return orElse();
  }
}

abstract class _Phase1ComplatedState implements PaymentState {
  const factory _Phase1ComplatedState(
      {required final PaymentModel paymentdata}) = _$_Phase1ComplatedState;

  PaymentModel get paymentdata;
  @JsonKey(ignore: true)
  _$$_Phase1ComplatedStateCopyWith<_$_Phase1ComplatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_Phase2InProgressStateCopyWith<$Res> {
  factory _$$_Phase2InProgressStateCopyWith(_$_Phase2InProgressState value,
          $Res Function(_$_Phase2InProgressState) then) =
      __$$_Phase2InProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase2InProgressStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Phase2InProgressState>
    implements _$$_Phase2InProgressStateCopyWith<$Res> {
  __$$_Phase2InProgressStateCopyWithImpl(_$_Phase2InProgressState _value,
      $Res Function(_$_Phase2InProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase2InProgressState implements _Phase2InProgressState {
  const _$_Phase2InProgressState();

  @override
  String toString() {
    return 'PaymentState.phase2InProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Phase2InProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase2InProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase2InProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase2InProgress != null) {
      return phase2InProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase2InProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase2InProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase2InProgress != null) {
      return phase2InProgress(this);
    }
    return orElse();
  }
}

abstract class _Phase2InProgressState implements PaymentState {
  const factory _Phase2InProgressState() = _$_Phase2InProgressState;
}

/// @nodoc
abstract class _$$_CompletedStateCopyWith<$Res> {
  factory _$$_CompletedStateCopyWith(
          _$_CompletedState value, $Res Function(_$_CompletedState) then) =
      __$$_CompletedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_CompletedState>
    implements _$$_CompletedStateCopyWith<$Res> {
  __$$_CompletedStateCopyWithImpl(
      _$_CompletedState _value, $Res Function(_$_CompletedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CompletedState implements _CompletedState {
  const _$_CompletedState();

  @override
  String toString() {
    return 'PaymentState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CompletedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _CompletedState implements PaymentState {
  const factory _CompletedState() = _$_CompletedState;
}

/// @nodoc
abstract class _$$_CancelledStateCopyWith<$Res> {
  factory _$$_CancelledStateCopyWith(
          _$_CancelledState value, $Res Function(_$_CancelledState) then) =
      __$$_CancelledStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelledStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_CancelledState>
    implements _$$_CancelledStateCopyWith<$Res> {
  __$$_CancelledStateCopyWithImpl(
      _$_CancelledState _value, $Res Function(_$_CancelledState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelledState implements _CancelledState {
  const _$_CancelledState();

  @override
  String toString() {
    return 'PaymentState.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelledState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _CancelledState implements PaymentState {
  const factory _CancelledState() = _$_CancelledState;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PaymentState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements PaymentState {
  const factory _ErrorState({required final String message}) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_Phase0InProgressWithoutTokenStateCopyWith<$Res> {
  factory _$$_Phase0InProgressWithoutTokenStateCopyWith(
          _$_Phase0InProgressWithoutTokenState value,
          $Res Function(_$_Phase0InProgressWithoutTokenState) then) =
      __$$_Phase0InProgressWithoutTokenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase0InProgressWithoutTokenStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res,
        _$_Phase0InProgressWithoutTokenState>
    implements _$$_Phase0InProgressWithoutTokenStateCopyWith<$Res> {
  __$$_Phase0InProgressWithoutTokenStateCopyWithImpl(
      _$_Phase0InProgressWithoutTokenState _value,
      $Res Function(_$_Phase0InProgressWithoutTokenState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase0InProgressWithoutTokenState
    implements _Phase0InProgressWithoutTokenState {
  const _$_Phase0InProgressWithoutTokenState();

  @override
  String toString() {
    return 'PaymentState.phase0InProgressWithoutToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase0InProgressWithoutTokenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase0InProgressWithoutToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase0InProgressWithoutToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0InProgressWithoutToken != null) {
      return phase0InProgressWithoutToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase0InProgressWithoutToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase0InProgressWithoutToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0InProgressWithoutToken != null) {
      return phase0InProgressWithoutToken(this);
    }
    return orElse();
  }
}

abstract class _Phase0InProgressWithoutTokenState implements PaymentState {
  const factory _Phase0InProgressWithoutTokenState() =
      _$_Phase0InProgressWithoutTokenState;
}

/// @nodoc
abstract class _$$_Phase0ComplatedWithoutTokenStateCopyWith<$Res> {
  factory _$$_Phase0ComplatedWithoutTokenStateCopyWith(
          _$_Phase0ComplatedWithoutTokenState value,
          $Res Function(_$_Phase0ComplatedWithoutTokenState) then) =
      __$$_Phase0ComplatedWithoutTokenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShippingModel> paymentdata});
}

/// @nodoc
class __$$_Phase0ComplatedWithoutTokenStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res,
        _$_Phase0ComplatedWithoutTokenState>
    implements _$$_Phase0ComplatedWithoutTokenStateCopyWith<$Res> {
  __$$_Phase0ComplatedWithoutTokenStateCopyWithImpl(
      _$_Phase0ComplatedWithoutTokenState _value,
      $Res Function(_$_Phase0ComplatedWithoutTokenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentdata = null,
  }) {
    return _then(_$_Phase0ComplatedWithoutTokenState(
      paymentdata: null == paymentdata
          ? _value._paymentdata
          : paymentdata // ignore: cast_nullable_to_non_nullable
              as List<ShippingModel>,
    ));
  }
}

/// @nodoc

class _$_Phase0ComplatedWithoutTokenState
    implements _Phase0ComplatedWithoutTokenState {
  const _$_Phase0ComplatedWithoutTokenState(
      {required final List<ShippingModel> paymentdata})
      : _paymentdata = paymentdata;

  final List<ShippingModel> _paymentdata;
  @override
  List<ShippingModel> get paymentdata {
    if (_paymentdata is EqualUnmodifiableListView) return _paymentdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentdata);
  }

  @override
  String toString() {
    return 'PaymentState.phase0WithoutTokenComplated(paymentdata: $paymentdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase0ComplatedWithoutTokenState &&
            const DeepCollectionEquality()
                .equals(other._paymentdata, _paymentdata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentdata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Phase0ComplatedWithoutTokenStateCopyWith<
          _$_Phase0ComplatedWithoutTokenState>
      get copyWith => __$$_Phase0ComplatedWithoutTokenStateCopyWithImpl<
          _$_Phase0ComplatedWithoutTokenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase0WithoutTokenComplated(paymentdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase0WithoutTokenComplated?.call(paymentdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0WithoutTokenComplated != null) {
      return phase0WithoutTokenComplated(paymentdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase0WithoutTokenComplated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase0WithoutTokenComplated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase0WithoutTokenComplated != null) {
      return phase0WithoutTokenComplated(this);
    }
    return orElse();
  }
}

abstract class _Phase0ComplatedWithoutTokenState implements PaymentState {
  const factory _Phase0ComplatedWithoutTokenState(
          {required final List<ShippingModel> paymentdata}) =
      _$_Phase0ComplatedWithoutTokenState;

  List<ShippingModel> get paymentdata;
  @JsonKey(ignore: true)
  _$$_Phase0ComplatedWithoutTokenStateCopyWith<
          _$_Phase0ComplatedWithoutTokenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_Phase1InProgressWithoutTokenStateCopyWith<$Res> {
  factory _$$_Phase1InProgressWithoutTokenStateCopyWith(
          _$_Phase1InProgressWithoutTokenState value,
          $Res Function(_$_Phase1InProgressWithoutTokenState) then) =
      __$$_Phase1InProgressWithoutTokenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase1InProgressWithoutTokenStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res,
        _$_Phase1InProgressWithoutTokenState>
    implements _$$_Phase1InProgressWithoutTokenStateCopyWith<$Res> {
  __$$_Phase1InProgressWithoutTokenStateCopyWithImpl(
      _$_Phase1InProgressWithoutTokenState _value,
      $Res Function(_$_Phase1InProgressWithoutTokenState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase1InProgressWithoutTokenState
    implements _Phase1InProgressWithoutTokenState {
  const _$_Phase1InProgressWithoutTokenState();

  @override
  String toString() {
    return 'PaymentState.phase1InProgressWithoutToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase1InProgressWithoutTokenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase1InProgressWithoutToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase1InProgressWithoutToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1InProgressWithoutToken != null) {
      return phase1InProgressWithoutToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase1InProgressWithoutToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase1InProgressWithoutToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1InProgressWithoutToken != null) {
      return phase1InProgressWithoutToken(this);
    }
    return orElse();
  }
}

abstract class _Phase1InProgressWithoutTokenState implements PaymentState {
  const factory _Phase1InProgressWithoutTokenState() =
      _$_Phase1InProgressWithoutTokenState;
}

/// @nodoc
abstract class _$$_Phase1ComplatedWithoutTokenStateCopyWith<$Res> {
  factory _$$_Phase1ComplatedWithoutTokenStateCopyWith(
          _$_Phase1ComplatedWithoutTokenState value,
          $Res Function(_$_Phase1ComplatedWithoutTokenState) then) =
      __$$_Phase1ComplatedWithoutTokenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase1ComplatedWithoutTokenStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res,
        _$_Phase1ComplatedWithoutTokenState>
    implements _$$_Phase1ComplatedWithoutTokenStateCopyWith<$Res> {
  __$$_Phase1ComplatedWithoutTokenStateCopyWithImpl(
      _$_Phase1ComplatedWithoutTokenState _value,
      $Res Function(_$_Phase1ComplatedWithoutTokenState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase1ComplatedWithoutTokenState
    implements _Phase1ComplatedWithoutTokenState {
  const _$_Phase1ComplatedWithoutTokenState();

  @override
  String toString() {
    return 'PaymentState.phase1WithoutTokenComplated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase1ComplatedWithoutTokenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase1WithoutTokenComplated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase1WithoutTokenComplated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1WithoutTokenComplated != null) {
      return phase1WithoutTokenComplated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase1WithoutTokenComplated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase1WithoutTokenComplated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase1WithoutTokenComplated != null) {
      return phase1WithoutTokenComplated(this);
    }
    return orElse();
  }
}

abstract class _Phase1ComplatedWithoutTokenState implements PaymentState {
  const factory _Phase1ComplatedWithoutTokenState() =
      _$_Phase1ComplatedWithoutTokenState;
}

/// @nodoc
abstract class _$$_Phase2InProgressWithoutTokenStateCopyWith<$Res> {
  factory _$$_Phase2InProgressWithoutTokenStateCopyWith(
          _$_Phase2InProgressWithoutTokenState value,
          $Res Function(_$_Phase2InProgressWithoutTokenState) then) =
      __$$_Phase2InProgressWithoutTokenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_Phase2InProgressWithoutTokenStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res,
        _$_Phase2InProgressWithoutTokenState>
    implements _$$_Phase2InProgressWithoutTokenStateCopyWith<$Res> {
  __$$_Phase2InProgressWithoutTokenStateCopyWithImpl(
      _$_Phase2InProgressWithoutTokenState _value,
      $Res Function(_$_Phase2InProgressWithoutTokenState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Phase2InProgressWithoutTokenState
    implements _Phase2InProgressWithoutTokenState {
  const _$_Phase2InProgressWithoutTokenState();

  @override
  String toString() {
    return 'PaymentState.phase2InProgressWithoutToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase2InProgressWithoutTokenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase2InProgressWithoutToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase2InProgressWithoutToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase2InProgressWithoutToken != null) {
      return phase2InProgressWithoutToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase2InProgressWithoutToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase2InProgressWithoutToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase2InProgressWithoutToken != null) {
      return phase2InProgressWithoutToken(this);
    }
    return orElse();
  }
}

abstract class _Phase2InProgressWithoutTokenState implements PaymentState {
  const factory _Phase2InProgressWithoutTokenState() =
      _$_Phase2InProgressWithoutTokenState;
}

/// @nodoc
abstract class _$$_Phase2WithoutTokenComplatedStateCopyWith<$Res> {
  factory _$$_Phase2WithoutTokenComplatedStateCopyWith(
          _$_Phase2WithoutTokenComplatedState value,
          $Res Function(_$_Phase2WithoutTokenComplatedState) then) =
      __$$_Phase2WithoutTokenComplatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentModel datos});
}

/// @nodoc
class __$$_Phase2WithoutTokenComplatedStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res,
        _$_Phase2WithoutTokenComplatedState>
    implements _$$_Phase2WithoutTokenComplatedStateCopyWith<$Res> {
  __$$_Phase2WithoutTokenComplatedStateCopyWithImpl(
      _$_Phase2WithoutTokenComplatedState _value,
      $Res Function(_$_Phase2WithoutTokenComplatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datos = null,
  }) {
    return _then(_$_Phase2WithoutTokenComplatedState(
      datos: null == datos
          ? _value.datos
          : datos // ignore: cast_nullable_to_non_nullable
              as PaymentModel,
    ));
  }
}

/// @nodoc

class _$_Phase2WithoutTokenComplatedState
    implements _Phase2WithoutTokenComplatedState {
  const _$_Phase2WithoutTokenComplatedState({required this.datos});

  @override
  final PaymentModel datos;

  @override
  String toString() {
    return 'PaymentState.phase2WithoutTokenComplated(datos: $datos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phase2WithoutTokenComplatedState &&
            (identical(other.datos, datos) || other.datos == datos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Phase2WithoutTokenComplatedStateCopyWith<
          _$_Phase2WithoutTokenComplatedState>
      get copyWith => __$$_Phase2WithoutTokenComplatedStateCopyWithImpl<
          _$_Phase2WithoutTokenComplatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() phase0InProgress,
    required TResult Function(List<ShippingModel> paymentdata) phase0Complated,
    required TResult Function() phase1InProgress,
    required TResult Function(PaymentModel paymentdata) phase1Complated,
    required TResult Function() phase2InProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function(String message) error,
    required TResult Function() phase0InProgressWithoutToken,
    required TResult Function(List<ShippingModel> paymentdata)
        phase0WithoutTokenComplated,
    required TResult Function() phase1InProgressWithoutToken,
    required TResult Function() phase1WithoutTokenComplated,
    required TResult Function() phase2InProgressWithoutToken,
    required TResult Function(PaymentModel datos) phase2WithoutTokenComplated,
  }) {
    return phase2WithoutTokenComplated(datos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? phase0InProgress,
    TResult? Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult? Function()? phase1InProgress,
    TResult? Function(PaymentModel paymentdata)? phase1Complated,
    TResult? Function()? phase2InProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function(String message)? error,
    TResult? Function()? phase0InProgressWithoutToken,
    TResult? Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult? Function()? phase1InProgressWithoutToken,
    TResult? Function()? phase1WithoutTokenComplated,
    TResult? Function()? phase2InProgressWithoutToken,
    TResult? Function(PaymentModel datos)? phase2WithoutTokenComplated,
  }) {
    return phase2WithoutTokenComplated?.call(datos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? phase0InProgress,
    TResult Function(List<ShippingModel> paymentdata)? phase0Complated,
    TResult Function()? phase1InProgress,
    TResult Function(PaymentModel paymentdata)? phase1Complated,
    TResult Function()? phase2InProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function(String message)? error,
    TResult Function()? phase0InProgressWithoutToken,
    TResult Function(List<ShippingModel> paymentdata)?
        phase0WithoutTokenComplated,
    TResult Function()? phase1InProgressWithoutToken,
    TResult Function()? phase1WithoutTokenComplated,
    TResult Function()? phase2InProgressWithoutToken,
    TResult Function(PaymentModel datos)? phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase2WithoutTokenComplated != null) {
      return phase2WithoutTokenComplated(datos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Phase0InProgressState value) phase0InProgress,
    required TResult Function(_Phase0ComplatedState value) phase0Complated,
    required TResult Function(_Phase1InProgressState value) phase1InProgress,
    required TResult Function(_Phase1ComplatedState value) phase1Complated,
    required TResult Function(_Phase2InProgressState value) phase2InProgress,
    required TResult Function(_CompletedState value) completed,
    required TResult Function(_CancelledState value) cancelled,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_Phase0InProgressWithoutTokenState value)
        phase0InProgressWithoutToken,
    required TResult Function(_Phase0ComplatedWithoutTokenState value)
        phase0WithoutTokenComplated,
    required TResult Function(_Phase1InProgressWithoutTokenState value)
        phase1InProgressWithoutToken,
    required TResult Function(_Phase1ComplatedWithoutTokenState value)
        phase1WithoutTokenComplated,
    required TResult Function(_Phase2InProgressWithoutTokenState value)
        phase2InProgressWithoutToken,
    required TResult Function(_Phase2WithoutTokenComplatedState value)
        phase2WithoutTokenComplated,
  }) {
    return phase2WithoutTokenComplated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Phase0InProgressState value)? phase0InProgress,
    TResult? Function(_Phase0ComplatedState value)? phase0Complated,
    TResult? Function(_Phase1InProgressState value)? phase1InProgress,
    TResult? Function(_Phase1ComplatedState value)? phase1Complated,
    TResult? Function(_Phase2InProgressState value)? phase2InProgress,
    TResult? Function(_CompletedState value)? completed,
    TResult? Function(_CancelledState value)? cancelled,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult? Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult? Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult? Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult? Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult? Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
  }) {
    return phase2WithoutTokenComplated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Phase0InProgressState value)? phase0InProgress,
    TResult Function(_Phase0ComplatedState value)? phase0Complated,
    TResult Function(_Phase1InProgressState value)? phase1InProgress,
    TResult Function(_Phase1ComplatedState value)? phase1Complated,
    TResult Function(_Phase2InProgressState value)? phase2InProgress,
    TResult Function(_CompletedState value)? completed,
    TResult Function(_CancelledState value)? cancelled,
    TResult Function(_ErrorState value)? error,
    TResult Function(_Phase0InProgressWithoutTokenState value)?
        phase0InProgressWithoutToken,
    TResult Function(_Phase0ComplatedWithoutTokenState value)?
        phase0WithoutTokenComplated,
    TResult Function(_Phase1InProgressWithoutTokenState value)?
        phase1InProgressWithoutToken,
    TResult Function(_Phase1ComplatedWithoutTokenState value)?
        phase1WithoutTokenComplated,
    TResult Function(_Phase2InProgressWithoutTokenState value)?
        phase2InProgressWithoutToken,
    TResult Function(_Phase2WithoutTokenComplatedState value)?
        phase2WithoutTokenComplated,
    required TResult orElse(),
  }) {
    if (phase2WithoutTokenComplated != null) {
      return phase2WithoutTokenComplated(this);
    }
    return orElse();
  }
}

abstract class _Phase2WithoutTokenComplatedState implements PaymentState {
  const factory _Phase2WithoutTokenComplatedState(
          {required final PaymentModel datos}) =
      _$_Phase2WithoutTokenComplatedState;

  PaymentModel get datos;
  @JsonKey(ignore: true)
  _$$_Phase2WithoutTokenComplatedStateCopyWith<
          _$_Phase2WithoutTokenComplatedState>
      get copyWith => throw _privateConstructorUsedError;
}
