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
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateList value) updateList,
    required TResult Function(_Updatevisibility value) updatevisibility,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    TResult Function(_SignOut value)? signOut,
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
abstract class _$$_UpdateListCopyWith<$Res> {
  factory _$$_UpdateListCopyWith(
          _$_UpdateList value, $Res Function(_$_UpdateList) then) =
      __$$_UpdateListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productlist});
}

/// @nodoc
class __$$_UpdateListCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res, _$_UpdateList>
    implements _$$_UpdateListCopyWith<$Res> {
  __$$_UpdateListCopyWithImpl(
      _$_UpdateList _value, $Res Function(_$_UpdateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productlist = null,
  }) {
    return _then(_$_UpdateList(
      productlist: null == productlist
          ? _value._productlist
          : productlist // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_UpdateList implements _UpdateList {
  const _$_UpdateList({required final List<ProductModel> productlist})
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
            other is _$_UpdateList &&
            const DeepCollectionEquality()
                .equals(other._productlist, _productlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateListCopyWith<_$_UpdateList> get copyWith =>
      __$$_UpdateListCopyWithImpl<_$_UpdateList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productlist) updateList,
    required TResult Function(int index) updatevisibility,
    required TResult Function() signOut,
  }) {
    return updateList(productlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
    TResult? Function()? signOut,
  }) {
    return updateList?.call(productlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
    TResult Function()? signOut,
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
    required TResult Function(_SignOut value) signOut,
  }) {
    return updateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return updateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    TResult Function(_SignOut value)? signOut,
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
      _$_UpdateList;

  List<ProductModel> get productlist;
  @JsonKey(ignore: true)
  _$$_UpdateListCopyWith<_$_UpdateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatevisibilityCopyWith<$Res> {
  factory _$$_UpdatevisibilityCopyWith(
          _$_Updatevisibility value, $Res Function(_$_Updatevisibility) then) =
      __$$_UpdatevisibilityCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_UpdatevisibilityCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res, _$_Updatevisibility>
    implements _$$_UpdatevisibilityCopyWith<$Res> {
  __$$_UpdatevisibilityCopyWithImpl(
      _$_Updatevisibility _value, $Res Function(_$_Updatevisibility) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_Updatevisibility(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Updatevisibility implements _Updatevisibility {
  const _$_Updatevisibility({required this.index});

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
            other is _$_Updatevisibility &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatevisibilityCopyWith<_$_Updatevisibility> get copyWith =>
      __$$_UpdatevisibilityCopyWithImpl<_$_Updatevisibility>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> productlist) updateList,
    required TResult Function(int index) updatevisibility,
    required TResult Function() signOut,
  }) {
    return updatevisibility(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
    TResult? Function()? signOut,
  }) {
    return updatevisibility?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
    TResult Function()? signOut,
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
    required TResult Function(_SignOut value) signOut,
  }) {
    return updatevisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return updatevisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    TResult Function(_SignOut value)? signOut,
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
      _$_Updatevisibility;

  int get index;
  @JsonKey(ignore: true)
  _$$_UpdatevisibilityCopyWith<_$_Updatevisibility> get copyWith =>
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
    extends _$CheckEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'CheckEvent.signOut()';
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
    required TResult Function(List<ProductModel> productlist) updateList,
    required TResult Function(int index) updatevisibility,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> productlist)? updateList,
    TResult? Function(int index)? updatevisibility,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> productlist)? updateList,
    TResult Function(int index)? updatevisibility,
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
    required TResult Function(_UpdateList value) updateList,
    required TResult Function(_Updatevisibility value) updatevisibility,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateList value)? updateList,
    TResult? Function(_Updatevisibility value)? updatevisibility,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateList value)? updateList,
    TResult Function(_Updatevisibility value)? updatevisibility,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements CheckEvent {
  const factory _SignOut() = _$_SignOut;
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
abstract class _$$_CartInitialCopyWith<$Res> {
  factory _$$_CartInitialCopyWith(
          _$_CartInitial value, $Res Function(_$_CartInitial) then) =
      __$$_CartInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartInitialCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$_CartInitial>
    implements _$$_CartInitialCopyWith<$Res> {
  __$$_CartInitialCopyWithImpl(
      _$_CartInitial _value, $Res Function(_$_CartInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartInitial implements _CartInitial {
  const _$_CartInitial();

  @override
  String toString() {
    return 'CheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartInitial);
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
  const factory _CartInitial() = _$_CartInitial;
}

/// @nodoc
abstract class _$$_CartLoadingStateCopyWith<$Res> {
  factory _$$_CartLoadingStateCopyWith(
          _$_CartLoadingState value, $Res Function(_$_CartLoadingState) then) =
      __$$_CartLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartLoadingStateCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$_CartLoadingState>
    implements _$$_CartLoadingStateCopyWith<$Res> {
  __$$_CartLoadingStateCopyWithImpl(
      _$_CartLoadingState _value, $Res Function(_$_CartLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartLoadingState implements _CartLoadingState {
  const _$_CartLoadingState();

  @override
  String toString() {
    return 'CheckState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartLoadingState);
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
  const factory _CartLoadingState() = _$_CartLoadingState;
}

/// @nodoc
abstract class _$$_CheckLoadedStateCopyWith<$Res> {
  factory _$$_CheckLoadedStateCopyWith(
          _$_CheckLoadedState value, $Res Function(_$_CheckLoadedState) then) =
      __$$_CheckLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<bool> selection});
}

/// @nodoc
class __$$_CheckLoadedStateCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$_CheckLoadedState>
    implements _$$_CheckLoadedStateCopyWith<$Res> {
  __$$_CheckLoadedStateCopyWithImpl(
      _$_CheckLoadedState _value, $Res Function(_$_CheckLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$_CheckLoadedState(
      selection: null == selection
          ? _value._selection
          : selection // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$_CheckLoadedState implements _CheckLoadedState {
  const _$_CheckLoadedState({required final List<bool> selection})
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
            other is _$_CheckLoadedState &&
            const DeepCollectionEquality()
                .equals(other._selection, _selection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_selection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckLoadedStateCopyWith<_$_CheckLoadedState> get copyWith =>
      __$$_CheckLoadedStateCopyWithImpl<_$_CheckLoadedState>(this, _$identity);

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
      _$_CheckLoadedState;

  List<bool> get selection;
  @JsonKey(ignore: true)
  _$$_CheckLoadedStateCopyWith<_$_CheckLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckErrorStateCopyWith<$Res> {
  factory _$$_CheckErrorStateCopyWith(
          _$_CheckErrorState value, $Res Function(_$_CheckErrorState) then) =
      __$$_CheckErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CheckErrorStateCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$_CheckErrorState>
    implements _$$_CheckErrorStateCopyWith<$Res> {
  __$$_CheckErrorStateCopyWithImpl(
      _$_CheckErrorState _value, $Res Function(_$_CheckErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CheckErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckErrorState implements _CheckErrorState {
  const _$_CheckErrorState({required this.message});

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
            other is _$_CheckErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckErrorStateCopyWith<_$_CheckErrorState> get copyWith =>
      __$$_CheckErrorStateCopyWithImpl<_$_CheckErrorState>(this, _$identity);

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
      _$_CheckErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_CheckErrorStateCopyWith<_$_CheckErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
