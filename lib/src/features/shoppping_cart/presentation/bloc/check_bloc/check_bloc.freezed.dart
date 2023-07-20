// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productlist) updateList,
    required TResult Function(int index) updatevisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateList value) updateList,
    required TResult Function(_Updatevisibility value) updatevisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckEventCopyWith<$Res> {
  factory $CheckEventCopyWith(
          CheckEvent value, $Res Function(CheckEvent) then) =
      _$CheckEventCopyWithImpl<$Res, CheckEvent>;
}

/// @nodoc
class _$CheckEventCopyWithImpl<$Res, $Val extends CheckEvent>
    implements $CheckEventCopyWith<$Res> {
  _$CheckEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateListCopyWith<$Res> {
  factory _$$UpdateListCopyWith(
          _$UpdateList value, $Res Function(_$UpdateList) then) =
      __$$UpdateListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productlist});
}

/// @nodoc
class __$$UpdateListCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res, _$UpdateList>
    implements _$$UpdateListCopyWith<$Res> {
  __$$UpdateListCopyWithImpl(
      _$UpdateList _value, $Res Function(_$UpdateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productlist = null,
  }) {
    return _then(_$UpdateList(
      productlist: null == productlist
          ? _value._productlist
          : productlist // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$UpdateList implements _UpdateList {
  const _$UpdateList({required final List<ProductModel> productlist})
      : _productlist = productlist;

  final List<ProductModel> _productlist;
  @override
  List<ProductModel> get productlist {
    if (_productlist is EqualUnmodifiableListView) return _productlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productlist);
  }

  @override
  String toString() {
    return 'CheckEvent.updateList(productlist: $productlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateList &&
            const DeepCollectionEquality()
                .equals(other._productlist, _productlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListCopyWith<_$UpdateList> get copyWith =>
      __$$UpdateListCopyWithImpl<_$UpdateList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productlist) updateList,
    required TResult Function(int index) updatevisibility,
  }) {
    return updateList(productlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
  }) {
    return updateList?.call(productlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
    required TResult orElse(),
  }) {
    if (updateList != null) {
      return updateList(productlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateList value) updateList,
    required TResult Function(_Updatevisibility value) updatevisibility,
  }) {
    return updateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
  }) {
    return updateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    required TResult orElse(),
  }) {
    if (updateList != null) {
      return updateList(this);
    }
    return orElse();
  }
}

abstract class _UpdateList implements CheckEvent {
  const factory _UpdateList({required final List<ProductModel> productlist}) =
      _$UpdateList;

  List<ProductModel> get productlist;
  @JsonKey(ignore: true)
  _$$UpdateListCopyWith<_$UpdateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatevisibilityCopyWith<$Res> {
  factory _$$UpdatevisibilityCopyWith(
          _$Updatevisibility value, $Res Function(_$Updatevisibility) then) =
      __$$UpdatevisibilityCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdatevisibilityCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res, _$Updatevisibility>
    implements _$$UpdatevisibilityCopyWith<$Res> {
  __$$UpdatevisibilityCopyWithImpl(
      _$Updatevisibility _value, $Res Function(_$Updatevisibility) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$Updatevisibility(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Updatevisibility implements _Updatevisibility {
  const _$Updatevisibility({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CheckEvent.updatevisibility(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Updatevisibility &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatevisibilityCopyWith<_$Updatevisibility> get copyWith =>
      __$$UpdatevisibilityCopyWithImpl<_$Updatevisibility>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productlist) updateList,
    required TResult Function(int index) updatevisibility,
  }) {
    return updatevisibility(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
  }) {
    return updatevisibility?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
    required TResult orElse(),
  }) {
    if (updatevisibility != null) {
      return updatevisibility(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateList value) updateList,
    required TResult Function(_Updatevisibility value) updatevisibility,
  }) {
    return updatevisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
  }) {
    return updatevisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    required TResult orElse(),
  }) {
    if (updatevisibility != null) {
      return updatevisibility(this);
    }
    return orElse();
  }
}

abstract class _Updatevisibility implements CheckEvent {
  const factory _Updatevisibility({required final int index}) =
      _$Updatevisibility;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdatevisibilityCopyWith<_$Updatevisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<bool> selection) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<bool> selection)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<bool> selection)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CheckLoadedState value) loaded,
    required TResult Function(_CheckErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CheckLoadedState value)? loaded,
    TResult? Function(_CheckErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CheckLoadedState value)? loaded,
    TResult Function(_CheckErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStateCopyWith<$Res> {
  factory $CheckStateCopyWith(
          CheckState value, $Res Function(CheckState) then) =
      _$CheckStateCopyWithImpl<$Res, CheckState>;
}

/// @nodoc
class _$CheckStateCopyWithImpl<$Res, $Val extends CheckState>
    implements $CheckStateCopyWith<$Res> {
  _$CheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartInitialCopyWith<$Res> {
  factory _$$CartInitialCopyWith(
          _$CartInitial value, $Res Function(_$CartInitial) then) =
      __$$CartInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitialCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$CartInitial>
    implements _$$CartInitialCopyWith<$Res> {
  __$$CartInitialCopyWithImpl(
      _$CartInitial _value, $Res Function(_$CartInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartInitial implements _CartInitial {
  const _$CartInitial();

  @override
  String toString() {
    return 'CheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<bool> selection) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<bool> selection)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<bool> selection)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CheckLoadedState value) loaded,
    required TResult Function(_CheckErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CheckLoadedState value)? loaded,
    TResult? Function(_CheckErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CheckLoadedState value)? loaded,
    TResult Function(_CheckErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartInitial implements CheckState {
  const factory _CartInitial() = _$CartInitial;
}

/// @nodoc
abstract class _$$CartLoadingStateCopyWith<$Res> {
  factory _$$CartLoadingStateCopyWith(
          _$CartLoadingState value, $Res Function(_$CartLoadingState) then) =
      __$$CartLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingStateCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$CartLoadingState>
    implements _$$CartLoadingStateCopyWith<$Res> {
  __$$CartLoadingStateCopyWithImpl(
      _$CartLoadingState _value, $Res Function(_$CartLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoadingState implements _CartLoadingState {
  const _$CartLoadingState();

  @override
  String toString() {
    return 'CheckState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<bool> selection) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<bool> selection)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<bool> selection)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CheckLoadedState value) loaded,
    required TResult Function(_CheckErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CheckLoadedState value)? loaded,
    TResult? Function(_CheckErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CheckLoadedState value)? loaded,
    TResult Function(_CheckErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoadingState implements CheckState {
  const factory _CartLoadingState() = _$CartLoadingState;
}

/// @nodoc
abstract class _$$CheckLoadedStateCopyWith<$Res> {
  factory _$$CheckLoadedStateCopyWith(
          _$CheckLoadedState value, $Res Function(_$CheckLoadedState) then) =
      __$$CheckLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<bool> selection});
}

/// @nodoc
class __$$CheckLoadedStateCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$CheckLoadedState>
    implements _$$CheckLoadedStateCopyWith<$Res> {
  __$$CheckLoadedStateCopyWithImpl(
      _$CheckLoadedState _value, $Res Function(_$CheckLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$CheckLoadedState(
      selection: null == selection
          ? _value._selection
          : selection // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$CheckLoadedState implements _CheckLoadedState {
  const _$CheckLoadedState({required final List<bool> selection})
      : _selection = selection;

  final List<bool> _selection;
  @override
  List<bool> get selection {
    if (_selection is EqualUnmodifiableListView) return _selection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selection);
  }

  @override
  String toString() {
    return 'CheckState.loaded(selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLoadedState &&
            const DeepCollectionEquality()
                .equals(other._selection, _selection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_selection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckLoadedStateCopyWith<_$CheckLoadedState> get copyWith =>
      __$$CheckLoadedStateCopyWithImpl<_$CheckLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<bool> selection) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(selection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<bool> selection)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(selection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<bool> selection)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CheckLoadedState value) loaded,
    required TResult Function(_CheckErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CheckLoadedState value)? loaded,
    TResult? Function(_CheckErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CheckLoadedState value)? loaded,
    TResult Function(_CheckErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CheckLoadedState implements CheckState {
  const factory _CheckLoadedState({required final List<bool> selection}) =
      _$CheckLoadedState;

  List<bool> get selection;
  @JsonKey(ignore: true)
  _$$CheckLoadedStateCopyWith<_$CheckLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckErrorStateCopyWith<$Res> {
  factory _$$CheckErrorStateCopyWith(
          _$CheckErrorState value, $Res Function(_$CheckErrorState) then) =
      __$$CheckErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CheckErrorStateCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$CheckErrorState>
    implements _$$CheckErrorStateCopyWith<$Res> {
  __$$CheckErrorStateCopyWithImpl(
      _$CheckErrorState _value, $Res Function(_$CheckErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CheckErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckErrorState implements _CheckErrorState {
  const _$CheckErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CheckState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckErrorStateCopyWith<_$CheckErrorState> get copyWith =>
      __$$CheckErrorStateCopyWithImpl<_$CheckErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<bool> selection) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<bool> selection)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<bool> selection)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CheckLoadedState value) loaded,
    required TResult Function(_CheckErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CheckLoadedState value)? loaded,
    TResult? Function(_CheckErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CheckLoadedState value)? loaded,
    TResult Function(_CheckErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CheckErrorState implements CheckState {
  const factory _CheckErrorState({required final String message}) =
      _$CheckErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$CheckErrorStateCopyWith<_$CheckErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
