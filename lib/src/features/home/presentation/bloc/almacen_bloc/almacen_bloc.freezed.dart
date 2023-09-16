// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'almacen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlmacenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int index, List<AlmacenModel> almacenes)
        activeAlmacen,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ActiveAlmacen value) activeAlmacen,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ActiveAlmacen value)? activeAlmacen,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ActiveAlmacen value)? activeAlmacen,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlmacenEventCopyWith<$Res> {
  factory $AlmacenEventCopyWith(
          AlmacenEvent value, $Res Function(AlmacenEvent) then) =
      _$AlmacenEventCopyWithImpl<$Res, AlmacenEvent>;
}

/// @nodoc
class _$AlmacenEventCopyWithImpl<$Res, $Val extends AlmacenEvent>
    implements $AlmacenEventCopyWith<$Res> {
  _$AlmacenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$AlmacenEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'AlmacenEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int index, List<AlmacenModel> almacenes)
        activeAlmacen,
    required TResult Function() signOut,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult? Function()? signOut,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult Function()? signOut,
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
    required TResult Function(_Load value) load,
    required TResult Function(_ActiveAlmacen value) activeAlmacen,
    required TResult Function(_SignOut value) signOut,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ActiveAlmacen value)? activeAlmacen,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ActiveAlmacen value)? activeAlmacen,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements AlmacenEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_ActiveAlmacenCopyWith<$Res> {
  factory _$$_ActiveAlmacenCopyWith(
          _$_ActiveAlmacen value, $Res Function(_$_ActiveAlmacen) then) =
      __$$_ActiveAlmacenCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, List<AlmacenModel> almacenes});
}

/// @nodoc
class __$$_ActiveAlmacenCopyWithImpl<$Res>
    extends _$AlmacenEventCopyWithImpl<$Res, _$_ActiveAlmacen>
    implements _$$_ActiveAlmacenCopyWith<$Res> {
  __$$_ActiveAlmacenCopyWithImpl(
      _$_ActiveAlmacen _value, $Res Function(_$_ActiveAlmacen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? almacenes = null,
  }) {
    return _then(_$_ActiveAlmacen(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      almacenes: null == almacenes
          ? _value._almacenes
          : almacenes // ignore: cast_nullable_to_non_nullable
              as List<AlmacenModel>,
    ));
  }
}

/// @nodoc

class _$_ActiveAlmacen implements _ActiveAlmacen {
  const _$_ActiveAlmacen(
      {required this.index, required final List<AlmacenModel> almacenes})
      : _almacenes = almacenes;

  @override
  final int index;
  final List<AlmacenModel> _almacenes;
  @override
  List<AlmacenModel> get almacenes {
    if (_almacenes is EqualUnmodifiableListView) return _almacenes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_almacenes);
  }

  @override
  String toString() {
    return 'AlmacenEvent.activeAlmacen(index: $index, almacenes: $almacenes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveAlmacen &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._almacenes, _almacenes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_almacenes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveAlmacenCopyWith<_$_ActiveAlmacen> get copyWith =>
      __$$_ActiveAlmacenCopyWithImpl<_$_ActiveAlmacen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int index, List<AlmacenModel> almacenes)
        activeAlmacen,
    required TResult Function() signOut,
  }) {
    return activeAlmacen(index, almacenes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult? Function()? signOut,
  }) {
    return activeAlmacen?.call(index, almacenes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (activeAlmacen != null) {
      return activeAlmacen(index, almacenes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ActiveAlmacen value) activeAlmacen,
    required TResult Function(_SignOut value) signOut,
  }) {
    return activeAlmacen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ActiveAlmacen value)? activeAlmacen,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return activeAlmacen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ActiveAlmacen value)? activeAlmacen,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (activeAlmacen != null) {
      return activeAlmacen(this);
    }
    return orElse();
  }
}

abstract class _ActiveAlmacen implements AlmacenEvent {
  const factory _ActiveAlmacen(
      {required final int index,
      required final List<AlmacenModel> almacenes}) = _$_ActiveAlmacen;

  int get index;
  List<AlmacenModel> get almacenes;
  @JsonKey(ignore: true)
  _$$_ActiveAlmacenCopyWith<_$_ActiveAlmacen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AlmacenEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AlmacenEvent.signOut()';
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
    required TResult Function(int index, List<AlmacenModel> almacenes)
        activeAlmacen,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int index, List<AlmacenModel> almacenes)? activeAlmacen,
    TResult Function()? signOut,
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
    required TResult Function(_Load value) load,
    required TResult Function(_ActiveAlmacen value) activeAlmacen,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ActiveAlmacen value)? activeAlmacen,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ActiveAlmacen value)? activeAlmacen,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AlmacenEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
mixin _$AlmacenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AlmacenModel> almacenes, int index)
        selectedAlmacen,
    required TResult Function(List<AlmacenModel> almacenes) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult? Function(List<AlmacenModel> almacenes)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult Function(List<AlmacenModel> almacenes)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectedAlmacen value) selectedAlmacen,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlmacenStateCopyWith<$Res> {
  factory $AlmacenStateCopyWith(
          AlmacenState value, $Res Function(AlmacenState) then) =
      _$AlmacenStateCopyWithImpl<$Res, AlmacenState>;
}

/// @nodoc
class _$AlmacenStateCopyWithImpl<$Res, $Val extends AlmacenState>
    implements $AlmacenStateCopyWith<$Res> {
  _$AlmacenStateCopyWithImpl(this._value, this._then);

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
    extends _$AlmacenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AlmacenState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<AlmacenModel> almacenes, int index)
        selectedAlmacen,
    required TResult Function(List<AlmacenModel> almacenes) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult? Function(List<AlmacenModel> almacenes)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult Function(List<AlmacenModel> almacenes)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectedAlmacen value) selectedAlmacen,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AlmacenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AlmacenStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AlmacenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AlmacenModel> almacenes, int index)
        selectedAlmacen,
    required TResult Function(List<AlmacenModel> almacenes) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult? Function(List<AlmacenModel> almacenes)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult Function(List<AlmacenModel> almacenes)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectedAlmacen value) selectedAlmacen,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AlmacenState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SelectedAlmacenCopyWith<$Res> {
  factory _$$_SelectedAlmacenCopyWith(
          _$_SelectedAlmacen value, $Res Function(_$_SelectedAlmacen) then) =
      __$$_SelectedAlmacenCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AlmacenModel> almacenes, int index});
}

/// @nodoc
class __$$_SelectedAlmacenCopyWithImpl<$Res>
    extends _$AlmacenStateCopyWithImpl<$Res, _$_SelectedAlmacen>
    implements _$$_SelectedAlmacenCopyWith<$Res> {
  __$$_SelectedAlmacenCopyWithImpl(
      _$_SelectedAlmacen _value, $Res Function(_$_SelectedAlmacen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? almacenes = null,
    Object? index = null,
  }) {
    return _then(_$_SelectedAlmacen(
      almacenes: null == almacenes
          ? _value._almacenes
          : almacenes // ignore: cast_nullable_to_non_nullable
              as List<AlmacenModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedAlmacen implements _SelectedAlmacen {
  const _$_SelectedAlmacen(
      {required final List<AlmacenModel> almacenes, required this.index})
      : _almacenes = almacenes;

  final List<AlmacenModel> _almacenes;
  @override
  List<AlmacenModel> get almacenes {
    if (_almacenes is EqualUnmodifiableListView) return _almacenes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_almacenes);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'AlmacenState.selectedAlmacen(almacenes: $almacenes, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedAlmacen &&
            const DeepCollectionEquality()
                .equals(other._almacenes, _almacenes) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_almacenes), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedAlmacenCopyWith<_$_SelectedAlmacen> get copyWith =>
      __$$_SelectedAlmacenCopyWithImpl<_$_SelectedAlmacen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AlmacenModel> almacenes, int index)
        selectedAlmacen,
    required TResult Function(List<AlmacenModel> almacenes) success,
    required TResult Function(String message) failure,
  }) {
    return selectedAlmacen(almacenes, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult? Function(List<AlmacenModel> almacenes)? success,
    TResult? Function(String message)? failure,
  }) {
    return selectedAlmacen?.call(almacenes, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult Function(List<AlmacenModel> almacenes)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (selectedAlmacen != null) {
      return selectedAlmacen(almacenes, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectedAlmacen value) selectedAlmacen,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return selectedAlmacen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return selectedAlmacen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (selectedAlmacen != null) {
      return selectedAlmacen(this);
    }
    return orElse();
  }
}

abstract class _SelectedAlmacen implements AlmacenState {
  const factory _SelectedAlmacen(
      {required final List<AlmacenModel> almacenes,
      required final int index}) = _$_SelectedAlmacen;

  List<AlmacenModel> get almacenes;
  int get index;
  @JsonKey(ignore: true)
  _$$_SelectedAlmacenCopyWith<_$_SelectedAlmacen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AlmacenModel> almacenes});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$AlmacenStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? almacenes = null,
  }) {
    return _then(_$_Success(
      almacenes: null == almacenes
          ? _value._almacenes
          : almacenes // ignore: cast_nullable_to_non_nullable
              as List<AlmacenModel>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required final List<AlmacenModel> almacenes})
      : _almacenes = almacenes;

  final List<AlmacenModel> _almacenes;
  @override
  List<AlmacenModel> get almacenes {
    if (_almacenes is EqualUnmodifiableListView) return _almacenes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_almacenes);
  }

  @override
  String toString() {
    return 'AlmacenState.success(almacenes: $almacenes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other._almacenes, _almacenes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_almacenes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AlmacenModel> almacenes, int index)
        selectedAlmacen,
    required TResult Function(List<AlmacenModel> almacenes) success,
    required TResult Function(String message) failure,
  }) {
    return success(almacenes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult? Function(List<AlmacenModel> almacenes)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(almacenes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult Function(List<AlmacenModel> almacenes)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(almacenes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectedAlmacen value) selectedAlmacen,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AlmacenState {
  const factory _Success({required final List<AlmacenModel> almacenes}) =
      _$_Success;

  List<AlmacenModel> get almacenes;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$AlmacenStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AlmacenState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AlmacenModel> almacenes, int index)
        selectedAlmacen,
    required TResult Function(List<AlmacenModel> almacenes) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult? Function(List<AlmacenModel> almacenes)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AlmacenModel> almacenes, int index)? selectedAlmacen,
    TResult Function(List<AlmacenModel> almacenes)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectedAlmacen value) selectedAlmacen,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectedAlmacen value)? selectedAlmacen,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AlmacenState {
  const factory _Failure({required final String message}) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
