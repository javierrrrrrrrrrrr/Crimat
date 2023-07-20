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
  ProductModel get product => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function(ProductModel product) changeCheckState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function(ProductModel product)? changeCheckState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function(ProductModel product)? changeCheckState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddedProductToCartEvent value) addedProduct,
    required TResult Function(RemovedProductToCartEvent value) removedProduct,
    required TResult Function(RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(ChangeCheckState value) changeCheckState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductToCartEvent value)? addedProduct,
    TResult? Function(RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(ChangeCheckState value)? changeCheckState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductToCartEvent value)? addedProduct,
    TResult Function(RemovedProductToCartEvent value)? removedProduct,
    TResult Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(ChangeCheckState value)? changeCheckState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEventCopyWith<CartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddedProductToCartEventCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$AddedProductToCartEventCopyWith(_$AddedProductToCartEvent value,
          $Res Function(_$AddedProductToCartEvent) then) =
      __$$AddedProductToCartEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$AddedProductToCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddedProductToCartEvent>
    implements _$$AddedProductToCartEventCopyWith<$Res> {
  __$$AddedProductToCartEventCopyWithImpl(_$AddedProductToCartEvent _value,
      $Res Function(_$AddedProductToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddedProductToCartEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$AddedProductToCartEvent implements AddedProductToCartEvent {
  const _$AddedProductToCartEvent({required this.product});

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
            other is _$AddedProductToCartEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedProductToCartEventCopyWith<_$AddedProductToCartEvent> get copyWith =>
      __$$AddedProductToCartEventCopyWithImpl<_$AddedProductToCartEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function(ProductModel product) changeCheckState,
  }) {
    return addedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function(ProductModel product)? changeCheckState,
  }) {
    return addedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function(ProductModel product)? changeCheckState,
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
    required TResult Function(AddedProductToCartEvent value) addedProduct,
    required TResult Function(RemovedProductToCartEvent value) removedProduct,
    required TResult Function(RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(ChangeCheckState value) changeCheckState,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductToCartEvent value)? addedProduct,
    TResult? Function(RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(ChangeCheckState value)? changeCheckState,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductToCartEvent value)? addedProduct,
    TResult Function(RemovedProductToCartEvent value)? removedProduct,
    TResult Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(ChangeCheckState value)? changeCheckState,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class AddedProductToCartEvent implements CartEvent {
  const factory AddedProductToCartEvent({required final ProductModel product}) =
      _$AddedProductToCartEvent;

  @override
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$AddedProductToCartEventCopyWith<_$AddedProductToCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedProductToCartEventCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$RemovedProductToCartEventCopyWith(
          _$RemovedProductToCartEvent value,
          $Res Function(_$RemovedProductToCartEvent) then) =
      __$$RemovedProductToCartEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$RemovedProductToCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemovedProductToCartEvent>
    implements _$$RemovedProductToCartEventCopyWith<$Res> {
  __$$RemovedProductToCartEventCopyWithImpl(_$RemovedProductToCartEvent _value,
      $Res Function(_$RemovedProductToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemovedProductToCartEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$RemovedProductToCartEvent implements RemovedProductToCartEvent {
  const _$RemovedProductToCartEvent({required this.product});

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
            other is _$RemovedProductToCartEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedProductToCartEventCopyWith<_$RemovedProductToCartEvent>
      get copyWith => __$$RemovedProductToCartEventCopyWithImpl<
          _$RemovedProductToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function(ProductModel product) changeCheckState,
  }) {
    return removedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function(ProductModel product)? changeCheckState,
  }) {
    return removedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function(ProductModel product)? changeCheckState,
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
    required TResult Function(AddedProductToCartEvent value) addedProduct,
    required TResult Function(RemovedProductToCartEvent value) removedProduct,
    required TResult Function(RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(ChangeCheckState value) changeCheckState,
  }) {
    return removedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductToCartEvent value)? addedProduct,
    TResult? Function(RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(ChangeCheckState value)? changeCheckState,
  }) {
    return removedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductToCartEvent value)? addedProduct,
    TResult Function(RemovedProductToCartEvent value)? removedProduct,
    TResult Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(ChangeCheckState value)? changeCheckState,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(this);
    }
    return orElse();
  }
}

abstract class RemovedProductToCartEvent implements CartEvent {
  const factory RemovedProductToCartEvent(
      {required final ProductModel product}) = _$RemovedProductToCartEvent;

  @override
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$RemovedProductToCartEventCopyWith<_$RemovedProductToCartEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedProductAllToCartEventCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$RemovedProductAllToCartEventCopyWith(
          _$RemovedProductAllToCartEvent value,
          $Res Function(_$RemovedProductAllToCartEvent) then) =
      __$$RemovedProductAllToCartEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$RemovedProductAllToCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemovedProductAllToCartEvent>
    implements _$$RemovedProductAllToCartEventCopyWith<$Res> {
  __$$RemovedProductAllToCartEventCopyWithImpl(
      _$RemovedProductAllToCartEvent _value,
      $Res Function(_$RemovedProductAllToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemovedProductAllToCartEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$RemovedProductAllToCartEvent implements RemovedProductAllToCartEvent {
  const _$RemovedProductAllToCartEvent({required this.product});

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
            other is _$RemovedProductAllToCartEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedProductAllToCartEventCopyWith<_$RemovedProductAllToCartEvent>
      get copyWith => __$$RemovedProductAllToCartEventCopyWithImpl<
          _$RemovedProductAllToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function(ProductModel product) changeCheckState,
  }) {
    return removedAllProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function(ProductModel product)? changeCheckState,
  }) {
    return removedAllProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function(ProductModel product)? changeCheckState,
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
    required TResult Function(AddedProductToCartEvent value) addedProduct,
    required TResult Function(RemovedProductToCartEvent value) removedProduct,
    required TResult Function(RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(ChangeCheckState value) changeCheckState,
  }) {
    return removedAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductToCartEvent value)? addedProduct,
    TResult? Function(RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(ChangeCheckState value)? changeCheckState,
  }) {
    return removedAllProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductToCartEvent value)? addedProduct,
    TResult Function(RemovedProductToCartEvent value)? removedProduct,
    TResult Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(ChangeCheckState value)? changeCheckState,
    required TResult orElse(),
  }) {
    if (removedAllProduct != null) {
      return removedAllProduct(this);
    }
    return orElse();
  }
}

abstract class RemovedProductAllToCartEvent implements CartEvent {
  const factory RemovedProductAllToCartEvent(
      {required final ProductModel product}) = _$RemovedProductAllToCartEvent;

  @override
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$RemovedProductAllToCartEventCopyWith<_$RemovedProductAllToCartEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCheckStateCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$ChangeCheckStateCopyWith(
          _$ChangeCheckState value, $Res Function(_$ChangeCheckState) then) =
      __$$ChangeCheckStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$ChangeCheckStateCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ChangeCheckState>
    implements _$$ChangeCheckStateCopyWith<$Res> {
  __$$ChangeCheckStateCopyWithImpl(
      _$ChangeCheckState _value, $Res Function(_$ChangeCheckState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ChangeCheckState(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$ChangeCheckState implements ChangeCheckState {
  const _$ChangeCheckState({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartEvent.changeCheckState(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCheckState &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCheckStateCopyWith<_$ChangeCheckState> get copyWith =>
      __$$ChangeCheckStateCopyWithImpl<_$ChangeCheckState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product) addedProduct,
    required TResult Function(ProductModel product) removedProduct,
    required TResult Function(ProductModel product) removedAllProduct,
    required TResult Function(ProductModel product) changeCheckState,
  }) {
    return changeCheckState(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product)? addedProduct,
    TResult? Function(ProductModel product)? removedProduct,
    TResult? Function(ProductModel product)? removedAllProduct,
    TResult? Function(ProductModel product)? changeCheckState,
  }) {
    return changeCheckState?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product)? addedProduct,
    TResult Function(ProductModel product)? removedProduct,
    TResult Function(ProductModel product)? removedAllProduct,
    TResult Function(ProductModel product)? changeCheckState,
    required TResult orElse(),
  }) {
    if (changeCheckState != null) {
      return changeCheckState(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddedProductToCartEvent value) addedProduct,
    required TResult Function(RemovedProductToCartEvent value) removedProduct,
    required TResult Function(RemovedProductAllToCartEvent value)
        removedAllProduct,
    required TResult Function(ChangeCheckState value) changeCheckState,
  }) {
    return changeCheckState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductToCartEvent value)? addedProduct,
    TResult? Function(RemovedProductToCartEvent value)? removedProduct,
    TResult? Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult? Function(ChangeCheckState value)? changeCheckState,
  }) {
    return changeCheckState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductToCartEvent value)? addedProduct,
    TResult Function(RemovedProductToCartEvent value)? removedProduct,
    TResult Function(RemovedProductAllToCartEvent value)? removedAllProduct,
    TResult Function(ChangeCheckState value)? changeCheckState,
    required TResult orElse(),
  }) {
    if (changeCheckState != null) {
      return changeCheckState(this);
    }
    return orElse();
  }
}

abstract class ChangeCheckState implements CartEvent {
  const factory ChangeCheckState({required final ProductModel product}) =
      _$ChangeCheckState;

  @override
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$ChangeCheckStateCopyWith<_$ChangeCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Cart productCartList)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Cart productCartList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
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
abstract class _$$CartInitialCopyWith<$Res> {
  factory _$$CartInitialCopyWith(
          _$CartInitial value, $Res Function(_$CartInitial) then) =
      __$$CartInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartInitial>
    implements _$$CartInitialCopyWith<$Res> {
  __$$CartInitialCopyWithImpl(
      _$CartInitial _value, $Res Function(_$CartInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartInitial implements CartInitial {
  const _$CartInitial();

  @override
  String toString() {
    return 'CartState.initial()';
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
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CartInitial implements CartState {
  const factory CartInitial() = _$CartInitial;
}

/// @nodoc
abstract class _$$CartLoadingStateCopyWith<$Res> {
  factory _$$CartLoadingStateCopyWith(
          _$CartLoadingState value, $Res Function(_$CartLoadingState) then) =
      __$$CartLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingState>
    implements _$$CartLoadingStateCopyWith<$Res> {
  __$$CartLoadingStateCopyWithImpl(
      _$CartLoadingState _value, $Res Function(_$CartLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoadingState implements CartLoadingState {
  const _$CartLoadingState();

  @override
  String toString() {
    return 'CartState.loading()';
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
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoadingState implements CartState {
  const factory CartLoadingState() = _$CartLoadingState;
}

/// @nodoc
abstract class _$$CartLoadedStateCopyWith<$Res> {
  factory _$$CartLoadedStateCopyWith(
          _$CartLoadedState value, $Res Function(_$CartLoadedState) then) =
      __$$CartLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart productCartList});
}

/// @nodoc
class __$$CartLoadedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadedState>
    implements _$$CartLoadedStateCopyWith<$Res> {
  __$$CartLoadedStateCopyWithImpl(
      _$CartLoadedState _value, $Res Function(_$CartLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCartList = null,
  }) {
    return _then(_$CartLoadedState(
      productCartList: null == productCartList
          ? _value.productCartList
          : productCartList // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$CartLoadedState implements CartLoadedState {
  const _$CartLoadedState({required this.productCartList});

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
            other is _$CartLoadedState &&
            (identical(other.productCartList, productCartList) ||
                other.productCartList == productCartList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productCartList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadedStateCopyWith<_$CartLoadedState> get copyWith =>
      __$$CartLoadedStateCopyWithImpl<_$CartLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CartLoadedState implements CartState {
  const factory CartLoadedState({required final Cart productCartList}) =
      _$CartLoadedState;

  Cart get productCartList;
  @JsonKey(ignore: true)
  _$$CartLoadedStateCopyWith<_$CartLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorStateCopyWith<$Res> {
  factory _$$CartErrorStateCopyWith(
          _$CartErrorState value, $Res Function(_$CartErrorState) then) =
      __$$CartErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartErrorStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorState>
    implements _$$CartErrorStateCopyWith<$Res> {
  __$$CartErrorStateCopyWithImpl(
      _$CartErrorState _value, $Res Function(_$CartErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartErrorState implements CartErrorState {
  const _$CartErrorState({required this.message});

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
            other is _$CartErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorStateCopyWith<_$CartErrorState> get copyWith =>
      __$$CartErrorStateCopyWithImpl<_$CartErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Cart productCartList) loaded,
    required TResult Function(String message) error,
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
    required TResult Function(CartInitial value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CartErrorState implements CartState {
  const factory CartErrorState({required final String message}) =
      _$CartErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$CartErrorStateCopyWith<_$CartErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
