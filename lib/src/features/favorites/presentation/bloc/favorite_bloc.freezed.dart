// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) updateFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? updateFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? updateFavoriteList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_AddedProductToFavoriteEvent value) addedProduct,
    required TResult Function(_RemovedProductToFavoriteEvent value)
        removedProduct,
    required TResult Function(_UpdateFavoriteList value) updateFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult? Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult? Function(_UpdateFavoriteList value)? updateFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult Function(_UpdateFavoriteList value)? updateFavoriteList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

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
    extends _$FavoriteEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'FavoriteEvent.load()';
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
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) updateFavoriteList,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? updateFavoriteList,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? updateFavoriteList,
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
    required TResult Function(_AddedProductToFavoriteEvent value) addedProduct,
    required TResult Function(_RemovedProductToFavoriteEvent value)
        removedProduct,
    required TResult Function(_UpdateFavoriteList value) updateFavoriteList,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult? Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult? Function(_UpdateFavoriteList value)? updateFavoriteList,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult Function(_UpdateFavoriteList value)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements FavoriteEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_AddedProductToFavoriteEventCopyWith<$Res> {
  factory _$$_AddedProductToFavoriteEventCopyWith(
          _$_AddedProductToFavoriteEvent value,
          $Res Function(_$_AddedProductToFavoriteEvent) then) =
      __$$_AddedProductToFavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$_AddedProductToFavoriteEventCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_AddedProductToFavoriteEvent>
    implements _$$_AddedProductToFavoriteEventCopyWith<$Res> {
  __$$_AddedProductToFavoriteEventCopyWithImpl(
      _$_AddedProductToFavoriteEvent _value,
      $Res Function(_$_AddedProductToFavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_AddedProductToFavoriteEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_AddedProductToFavoriteEvent implements _AddedProductToFavoriteEvent {
  const _$_AddedProductToFavoriteEvent({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'FavoriteEvent.addedProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedProductToFavoriteEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedProductToFavoriteEventCopyWith<_$_AddedProductToFavoriteEvent>
      get copyWith => __$$_AddedProductToFavoriteEventCopyWithImpl<
          _$_AddedProductToFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) updateFavoriteList,
  }) {
    return addedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? updateFavoriteList,
  }) {
    return addedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_AddedProductToFavoriteEvent value) addedProduct,
    required TResult Function(_RemovedProductToFavoriteEvent value)
        removedProduct,
    required TResult Function(_UpdateFavoriteList value) updateFavoriteList,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult? Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult? Function(_UpdateFavoriteList value)? updateFavoriteList,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult Function(_UpdateFavoriteList value)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class _AddedProductToFavoriteEvent implements FavoriteEvent {
  const factory _AddedProductToFavoriteEvent(
      {required final ProductModel product}) = _$_AddedProductToFavoriteEvent;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_AddedProductToFavoriteEventCopyWith<_$_AddedProductToFavoriteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedProductToFavoriteEventCopyWith<$Res> {
  factory _$$_RemovedProductToFavoriteEventCopyWith(
          _$_RemovedProductToFavoriteEvent value,
          $Res Function(_$_RemovedProductToFavoriteEvent) then) =
      __$$_RemovedProductToFavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$_RemovedProductToFavoriteEventCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_RemovedProductToFavoriteEvent>
    implements _$$_RemovedProductToFavoriteEventCopyWith<$Res> {
  __$$_RemovedProductToFavoriteEventCopyWithImpl(
      _$_RemovedProductToFavoriteEvent _value,
      $Res Function(_$_RemovedProductToFavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_RemovedProductToFavoriteEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_RemovedProductToFavoriteEvent
    implements _RemovedProductToFavoriteEvent {
  const _$_RemovedProductToFavoriteEvent({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'FavoriteEvent.removedProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemovedProductToFavoriteEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovedProductToFavoriteEventCopyWith<_$_RemovedProductToFavoriteEvent>
      get copyWith => __$$_RemovedProductToFavoriteEventCopyWithImpl<
          _$_RemovedProductToFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) updateFavoriteList,
  }) {
    return removedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? updateFavoriteList,
  }) {
    return removedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_AddedProductToFavoriteEvent value) addedProduct,
    required TResult Function(_RemovedProductToFavoriteEvent value)
        removedProduct,
    required TResult Function(_UpdateFavoriteList value) updateFavoriteList,
  }) {
    return removedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult? Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult? Function(_UpdateFavoriteList value)? updateFavoriteList,
  }) {
    return removedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult Function(_UpdateFavoriteList value)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(this);
    }
    return orElse();
  }
}

abstract class _RemovedProductToFavoriteEvent implements FavoriteEvent {
  const factory _RemovedProductToFavoriteEvent(
      {required final ProductModel product}) = _$_RemovedProductToFavoriteEvent;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_RemovedProductToFavoriteEventCopyWith<_$_RemovedProductToFavoriteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFavoriteListCopyWith<$Res> {
  factory _$$_UpdateFavoriteListCopyWith(_$_UpdateFavoriteList value,
          $Res Function(_$_UpdateFavoriteList) then) =
      __$$_UpdateFavoriteListCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$_UpdateFavoriteListCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_UpdateFavoriteList>
    implements _$$_UpdateFavoriteListCopyWith<$Res> {
  __$$_UpdateFavoriteListCopyWithImpl(
      _$_UpdateFavoriteList _value, $Res Function(_$_UpdateFavoriteList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_UpdateFavoriteList(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_UpdateFavoriteList implements _UpdateFavoriteList {
  const _$_UpdateFavoriteList({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'FavoriteEvent.updateFavoriteList(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFavoriteList &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFavoriteListCopyWith<_$_UpdateFavoriteList> get copyWith =>
      __$$_UpdateFavoriteListCopyWithImpl<_$_UpdateFavoriteList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) updateFavoriteList,
  }) {
    return updateFavoriteList(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? updateFavoriteList,
  }) {
    return updateFavoriteList?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (updateFavoriteList != null) {
      return updateFavoriteList(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_AddedProductToFavoriteEvent value) addedProduct,
    required TResult Function(_RemovedProductToFavoriteEvent value)
        removedProduct,
    required TResult Function(_UpdateFavoriteList value) updateFavoriteList,
  }) {
    return updateFavoriteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult? Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult? Function(_UpdateFavoriteList value)? updateFavoriteList,
  }) {
    return updateFavoriteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AddedProductToFavoriteEvent value)? addedProduct,
    TResult Function(_RemovedProductToFavoriteEvent value)? removedProduct,
    TResult Function(_UpdateFavoriteList value)? updateFavoriteList,
    required TResult orElse(),
  }) {
    if (updateFavoriteList != null) {
      return updateFavoriteList(this);
    }
    return orElse();
  }
}

abstract class _UpdateFavoriteList implements FavoriteEvent {
  const factory _UpdateFavoriteList({required final ProductModel product}) =
      _$_UpdateFavoriteList;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_UpdateFavoriteListCopyWith<_$_UpdateFavoriteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noLogedUserState,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productModelList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noLogedUserState,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productModelList)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noLogedUserState,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productModelList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoLogedUserState value) noLogedUserState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoLogedUserState value)? noLogedUserState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoLogedUserState value)? noLogedUserState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

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
    extends _$FavoriteStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
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
    required TResult Function() noLogedUserState,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productModelList) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noLogedUserState,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productModelList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noLogedUserState,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productModelList)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoLogedUserState value) noLogedUserState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoLogedUserState value)? noLogedUserState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoLogedUserState value)? noLogedUserState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_NoLogedUserStateCopyWith<$Res> {
  factory _$$_NoLogedUserStateCopyWith(
          _$_NoLogedUserState value, $Res Function(_$_NoLogedUserState) then) =
      __$$_NoLogedUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoLogedUserStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_NoLogedUserState>
    implements _$$_NoLogedUserStateCopyWith<$Res> {
  __$$_NoLogedUserStateCopyWithImpl(
      _$_NoLogedUserState _value, $Res Function(_$_NoLogedUserState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoLogedUserState implements _NoLogedUserState {
  const _$_NoLogedUserState();

  @override
  String toString() {
    return 'FavoriteState.noLogedUserState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoLogedUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noLogedUserState,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productModelList) loaded,
    required TResult Function(String message) error,
  }) {
    return noLogedUserState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noLogedUserState,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productModelList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return noLogedUserState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noLogedUserState,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productModelList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noLogedUserState != null) {
      return noLogedUserState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoLogedUserState value) noLogedUserState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return noLogedUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoLogedUserState value)? noLogedUserState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return noLogedUserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoLogedUserState value)? noLogedUserState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (noLogedUserState != null) {
      return noLogedUserState(this);
    }
    return orElse();
  }
}

abstract class _NoLogedUserState implements FavoriteState {
  const factory _NoLogedUserState() = _$_NoLogedUserState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noLogedUserState,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productModelList) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noLogedUserState,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productModelList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noLogedUserState,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productModelList)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoLogedUserState value) noLogedUserState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoLogedUserState value)? noLogedUserState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoLogedUserState value)? noLogedUserState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements FavoriteState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productModelList});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModelList = null,
  }) {
    return _then(_$_LoadedState(
      productModelList: null == productModelList
          ? _value._productModelList
          : productModelList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_LoadedState implements _LoadedState {
  const _$_LoadedState({required final List<ProductModel> productModelList})
      : _productModelList = productModelList;

  final List<ProductModel> _productModelList;
  @override
  List<ProductModel> get productModelList {
    if (_productModelList is EqualUnmodifiableListView)
      return _productModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productModelList);
  }

  @override
  String toString() {
    return 'FavoriteState.loaded(productModelList: $productModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality()
                .equals(other._productModelList, _productModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noLogedUserState,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productModelList) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(productModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noLogedUserState,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productModelList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(productModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noLogedUserState,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productModelList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(productModelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoLogedUserState value) noLogedUserState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoLogedUserState value)? noLogedUserState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoLogedUserState value)? noLogedUserState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements FavoriteState {
  const factory _LoadedState(
      {required final List<ProductModel> productModelList}) = _$_LoadedState;

  List<ProductModel> get productModelList;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$FavoriteStateCopyWithImpl<$Res, _$_ErrorState>
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
    return 'FavoriteState.error(message: $message)';
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
    required TResult Function() noLogedUserState,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productModelList) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noLogedUserState,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productModelList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noLogedUserState,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productModelList)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoLogedUserState value) noLogedUserState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoLogedUserState value)? noLogedUserState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoLogedUserState value)? noLogedUserState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements FavoriteState {
  const factory _ErrorState({required final String message}) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
