// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function() clearShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function()? clearShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function()? clearShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedProductToCartEvent value) addedProduct,
    required TResult Function(_RemovedProductToCartEvent value) removedProduct,
    required TResult Function(_RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(_ClearShoppingCart value) clearShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedProductToCartEvent value)? addedProduct,
    TResult? Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(_ClearShoppingCart value)? clearShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedProductToCartEvent value)? addedProduct,
    TResult Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(_ClearShoppingCart value)? clearShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddedProductToCartEventCopyWith<$Res> {
  factory _$$_AddedProductToCartEventCopyWith(_$_AddedProductToCartEvent value,
          $Res Function(_$_AddedProductToCartEvent) then) =
      __$$_AddedProductToCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$_AddedProductToCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddedProductToCartEvent>
    implements _$$_AddedProductToCartEventCopyWith<$Res> {
  __$$_AddedProductToCartEventCopyWithImpl(_$_AddedProductToCartEvent _value,
      $Res Function(_$_AddedProductToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_AddedProductToCartEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_AddedProductToCartEvent implements _AddedProductToCartEvent {
  const _$_AddedProductToCartEvent({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartEvent.addedProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedProductToCartEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedProductToCartEventCopyWith<_$_AddedProductToCartEvent>
      get copyWith =>
          __$$_AddedProductToCartEventCopyWithImpl<_$_AddedProductToCartEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function() clearShoppingCart,
  }) {
    return addedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function()? clearShoppingCart,
  }) {
    return addedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function()? clearShoppingCart,
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
    required TResult Function(_AddedProductToCartEvent value) addedProduct,
    required TResult Function(_RemovedProductToCartEvent value) removedProduct,
    required TResult Function(_RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(_ClearShoppingCart value) clearShoppingCart,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedProductToCartEvent value)? addedProduct,
    TResult? Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(_ClearShoppingCart value)? clearShoppingCart,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedProductToCartEvent value)? addedProduct,
    TResult Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(_ClearShoppingCart value)? clearShoppingCart,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class _AddedProductToCartEvent implements CartEvent {
  const factory _AddedProductToCartEvent(
      {required final ProductModel product}) = _$_AddedProductToCartEvent;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_AddedProductToCartEventCopyWith<_$_AddedProductToCartEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedProductToCartEventCopyWith<$Res> {
  factory _$$_RemovedProductToCartEventCopyWith(
          _$_RemovedProductToCartEvent value,
          $Res Function(_$_RemovedProductToCartEvent) then) =
      __$$_RemovedProductToCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$_RemovedProductToCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemovedProductToCartEvent>
    implements _$$_RemovedProductToCartEventCopyWith<$Res> {
  __$$_RemovedProductToCartEventCopyWithImpl(
      _$_RemovedProductToCartEvent _value,
      $Res Function(_$_RemovedProductToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_RemovedProductToCartEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_RemovedProductToCartEvent implements _RemovedProductToCartEvent {
  const _$_RemovedProductToCartEvent({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartEvent.removedProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemovedProductToCartEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovedProductToCartEventCopyWith<_$_RemovedProductToCartEvent>
      get copyWith => __$$_RemovedProductToCartEventCopyWithImpl<
          _$_RemovedProductToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function() clearShoppingCart,
  }) {
    return removedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function()? clearShoppingCart,
  }) {
    return removedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function()? clearShoppingCart,
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
    required TResult Function(_AddedProductToCartEvent value) addedProduct,
    required TResult Function(_RemovedProductToCartEvent value) removedProduct,
    required TResult Function(_RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(_ClearShoppingCart value) clearShoppingCart,
  }) {
    return removedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedProductToCartEvent value)? addedProduct,
    TResult? Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(_ClearShoppingCart value)? clearShoppingCart,
  }) {
    return removedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedProductToCartEvent value)? addedProduct,
    TResult Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(_ClearShoppingCart value)? clearShoppingCart,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(this);
    }
    return orElse();
  }
}

abstract class _RemovedProductToCartEvent implements CartEvent {
  const factory _RemovedProductToCartEvent(
      {required final ProductModel product}) = _$_RemovedProductToCartEvent;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_RemovedProductToCartEventCopyWith<_$_RemovedProductToCartEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedProductAllToCartEventCopyWith<$Res> {
  factory _$$_RemovedProductAllToCartEventCopyWith(
          _$_RemovedProductAllToCartEvent value,
          $Res Function(_$_RemovedProductAllToCartEvent) then) =
      __$$_RemovedProductAllToCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$_RemovedProductAllToCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemovedProductAllToCartEvent>
    implements _$$_RemovedProductAllToCartEventCopyWith<$Res> {
  __$$_RemovedProductAllToCartEventCopyWithImpl(
      _$_RemovedProductAllToCartEvent _value,
      $Res Function(_$_RemovedProductAllToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_RemovedProductAllToCartEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_RemovedProductAllToCartEvent implements _RemovedProductAllToCartEvent {
  const _$_RemovedProductAllToCartEvent({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartEvent.removedAllProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemovedProductAllToCartEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovedProductAllToCartEventCopyWith<_$_RemovedProductAllToCartEvent>
      get copyWith => __$$_RemovedProductAllToCartEventCopyWithImpl<
          _$_RemovedProductAllToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function() clearShoppingCart,
  }) {
    return removedAllProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function()? clearShoppingCart,
  }) {
    return removedAllProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function()? clearShoppingCart,
    required TResult orElse(),
  }) {
    if (removedAllProduct != null) {
      return removedAllProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedProductToCartEvent value) addedProduct,
    required TResult Function(_RemovedProductToCartEvent value) removedProduct,
    required TResult Function(_RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(_ClearShoppingCart value) clearShoppingCart,
  }) {
    return removedAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedProductToCartEvent value)? addedProduct,
    TResult? Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(_ClearShoppingCart value)? clearShoppingCart,
  }) {
    return removedAllProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedProductToCartEvent value)? addedProduct,
    TResult Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(_ClearShoppingCart value)? clearShoppingCart,
    required TResult orElse(),
  }) {
    if (removedAllProduct != null) {
      return removedAllProduct(this);
    }
    return orElse();
  }
}

abstract class _RemovedProductAllToCartEvent implements CartEvent {
  const factory _RemovedProductAllToCartEvent(
      {required final ProductModel product}) = _$_RemovedProductAllToCartEvent;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_RemovedProductAllToCartEventCopyWith<_$_RemovedProductAllToCartEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearShoppingCartCopyWith<$Res> {
  factory _$$_ClearShoppingCartCopyWith(_$_ClearShoppingCart value,
          $Res Function(_$_ClearShoppingCart) then) =
      __$$_ClearShoppingCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearShoppingCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_ClearShoppingCart>
    implements _$$_ClearShoppingCartCopyWith<$Res> {
  __$$_ClearShoppingCartCopyWithImpl(
      _$_ClearShoppingCart _value, $Res Function(_$_ClearShoppingCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearShoppingCart implements _ClearShoppingCart {
  const _$_ClearShoppingCart();

  @override
  String toString() {
    return 'CartEvent.clearShoppingCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearShoppingCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function() clearShoppingCart,
  }) {
    return clearShoppingCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function()? clearShoppingCart,
  }) {
    return clearShoppingCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function()? clearShoppingCart,
    required TResult orElse(),
  }) {
    if (clearShoppingCart != null) {
      return clearShoppingCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedProductToCartEvent value) addedProduct,
    required TResult Function(_RemovedProductToCartEvent value) removedProduct,
    required TResult Function(_RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(_ClearShoppingCart value) clearShoppingCart,
  }) {
    return clearShoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedProductToCartEvent value)? addedProduct,
    TResult? Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(_ClearShoppingCart value)? clearShoppingCart,
  }) {
    return clearShoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedProductToCartEvent value)? addedProduct,
    TResult Function(_RemovedProductToCartEvent value)? removedProduct,
    TResult Function(_RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(_ClearShoppingCart value)? clearShoppingCart,
    required TResult orElse(),
  }) {
    if (clearShoppingCart != null) {
      return clearShoppingCart(this);
    }
    return orElse();
  }
}

abstract class _ClearShoppingCart implements CartEvent {
  const factory _ClearShoppingCart() = _$_ClearShoppingCart;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$_CartInitial>
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
    return 'CartState.initial()';
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
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
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
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartInitial implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$_CartLoadingState>
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
    return 'CartState.loading()';
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
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
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
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoadingState implements CartState {
  const factory _CartLoadingState() = _$_CartLoadingState;
}

/// @nodoc
abstract class _$$_CartLoadedStateCopyWith<$Res> {
  factory _$$_CartLoadedStateCopyWith(
          _$_CartLoadedState value, $Res Function(_$_CartLoadedState) then) =
      __$$_CartLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart productCartList});
}

/// @nodoc
class __$$_CartLoadedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartLoadedState>
    implements _$$_CartLoadedStateCopyWith<$Res> {
  __$$_CartLoadedStateCopyWithImpl(
      _$_CartLoadedState _value, $Res Function(_$_CartLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCartList = null,
  }) {
    return _then(_$_CartLoadedState(
      productCartList: null == productCartList
          ? _value.productCartList
          : productCartList // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$_CartLoadedState implements _CartLoadedState {
  const _$_CartLoadedState({required this.productCartList});

  @override
  final Cart productCartList;

  @override
  String toString() {
    return 'CartState.loaded(productCartList: $productCartList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartLoadedState &&
            (identical(other.productCartList, productCartList) ||
                other.productCartList == productCartList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productCartList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartLoadedStateCopyWith<_$_CartLoadedState> get copyWith =>
      __$$_CartLoadedStateCopyWithImpl<_$_CartLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) {
    return loaded(productCartList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) {
    return loaded?.call(productCartList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(productCartList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CartLoadedState implements CartState {
  const factory _CartLoadedState({required final Cart productCartList}) =
      _$_CartLoadedState;

  Cart get productCartList;
  @JsonKey(ignore: true)
  _$$_CartLoadedStateCopyWith<_$_CartLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartErrorStateCopyWith<$Res> {
  factory _$$_CartErrorStateCopyWith(
          _$_CartErrorState value, $Res Function(_$_CartErrorState) then) =
      __$$_CartErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CartErrorStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartErrorState>
    implements _$$_CartErrorStateCopyWith<$Res> {
  __$$_CartErrorStateCopyWithImpl(
      _$_CartErrorState _value, $Res Function(_$_CartErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CartErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartErrorState implements _CartErrorState {
  const _$_CartErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartErrorStateCopyWith<_$_CartErrorState> get copyWith =>
      __$$_CartErrorStateCopyWithImpl<_$_CartErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
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
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CartErrorState implements CartState {
  const factory _CartErrorState({required final String message}) =
      _$_CartErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_CartErrorStateCopyWith<_$_CartErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessAddedToCartCopyWith<$Res> {
  factory _$$_SuccessAddedToCartCopyWith(_$_SuccessAddedToCart value,
          $Res Function(_$_SuccessAddedToCart) then) =
      __$$_SuccessAddedToCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessAddedToCartCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_SuccessAddedToCart>
    implements _$$_SuccessAddedToCartCopyWith<$Res> {
  __$$_SuccessAddedToCartCopyWithImpl(
      _$_SuccessAddedToCart _value, $Res Function(_$_SuccessAddedToCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessAddedToCart implements _SuccessAddedToCart {
  const _$_SuccessAddedToCart();

  @override
  String toString() {
    return 'CartState.successAddedToCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessAddedToCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) {
    return successAddedToCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) {
    return successAddedToCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
    required TResult orElse(),
  }) {
    if (successAddedToCart != null) {
      return successAddedToCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) {
    return successAddedToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) {
    return successAddedToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) {
    if (successAddedToCart != null) {
      return successAddedToCart(this);
    }
    return orElse();
  }
}

abstract class _SuccessAddedToCart implements CartState {
  const factory _SuccessAddedToCart() = _$_SuccessAddedToCart;
}

/// @nodoc
abstract class _$$_AddWarningCopyWith<$Res> {
  factory _$$_AddWarningCopyWith(
          _$_AddWarning value, $Res Function(_$_AddWarning) then) =
      __$$_AddWarningCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart productCartList});
}

/// @nodoc
class __$$_AddWarningCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_AddWarning>
    implements _$$_AddWarningCopyWith<$Res> {
  __$$_AddWarningCopyWithImpl(
      _$_AddWarning _value, $Res Function(_$_AddWarning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCartList = null,
  }) {
    return _then(_$_AddWarning(
      productCartList: null == productCartList
          ? _value.productCartList
          : productCartList // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$_AddWarning implements _AddWarning {
  const _$_AddWarning({required this.productCartList});

  @override
  final Cart productCartList;

  @override
  String toString() {
    return 'CartState.addWarning(productCartList: $productCartList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddWarning &&
            (identical(other.productCartList, productCartList) ||
                other.productCartList == productCartList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productCartList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddWarningCopyWith<_$_AddWarning> get copyWith =>
      __$$_AddWarningCopyWithImpl<_$_AddWarning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
    required TResult Function() successAddedToCart,
    required TResult Function(Cart productCartList) addWarning,
  }) {
    return addWarning(productCartList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? successAddedToCart,
    TResult? Function(Cart productCartList)? addWarning,
  }) {
    return addWarning?.call(productCartList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    TResult Function()? successAddedToCart,
    TResult Function(Cart productCartList)? addWarning,
    required TResult orElse(),
  }) {
    if (addWarning != null) {
      return addWarning(productCartList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoadingState value) loading,
    required TResult Function(_CartLoadedState value) loaded,
    required TResult Function(_CartErrorState value) error,
    required TResult Function(_SuccessAddedToCart value) successAddedToCart,
    required TResult Function(_AddWarning value) addWarning,
  }) {
    return addWarning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoadingState value)? loading,
    TResult? Function(_CartLoadedState value)? loaded,
    TResult? Function(_CartErrorState value)? error,
    TResult? Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult? Function(_AddWarning value)? addWarning,
  }) {
    return addWarning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoadingState value)? loading,
    TResult Function(_CartLoadedState value)? loaded,
    TResult Function(_CartErrorState value)? error,
    TResult Function(_SuccessAddedToCart value)? successAddedToCart,
    TResult Function(_AddWarning value)? addWarning,
    required TResult orElse(),
  }) {
    if (addWarning != null) {
      return addWarning(this);
    }
    return orElse();
  }
}

abstract class _AddWarning implements CartState {
  const factory _AddWarning({required final Cart productCartList}) =
      _$_AddWarning;

  Cart get productCartList;
  @JsonKey(ignore: true)
  _$$_AddWarningCopyWith<_$_AddWarning> get copyWith =>
      throw _privateConstructorUsedError;
}
