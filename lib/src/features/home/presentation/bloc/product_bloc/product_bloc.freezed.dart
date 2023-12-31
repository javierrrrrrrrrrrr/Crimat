// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadProductsCopyWith<$Res> {
  factory _$$_LoadProductsCopyWith(
          _$_LoadProducts value, $Res Function(_$_LoadProducts) then) =
      __$$_LoadProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_LoadProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_LoadProducts>
    implements _$$_LoadProductsCopyWith<$Res> {
  __$$_LoadProductsCopyWithImpl(
      _$_LoadProducts _value, $Res Function(_$_LoadProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_LoadProducts(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadProducts implements _LoadProducts {
  const _$_LoadProducts({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ProductEvent.loadProducts(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadProducts &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadProductsCopyWith<_$_LoadProducts> get copyWith =>
      __$$_LoadProductsCopyWithImpl<_$_LoadProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) {
    return loadProducts(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) {
    return loadProducts?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadProducts implements ProductEvent {
  const factory _LoadProducts({required final String id}) = _$_LoadProducts;

  String get id;
  @JsonKey(ignore: true)
  _$$_LoadProductsCopyWith<_$_LoadProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProductsByCategoriesCopyWith<$Res> {
  factory _$$_GetProductsByCategoriesCopyWith(_$_GetProductsByCategories value,
          $Res Function(_$_GetProductsByCategories) then) =
      __$$_GetProductsByCategoriesCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoriesModel category, List<ProductModel> listProduct});
}

/// @nodoc
class __$$_GetProductsByCategoriesCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProductsByCategories>
    implements _$$_GetProductsByCategoriesCopyWith<$Res> {
  __$$_GetProductsByCategoriesCopyWithImpl(_$_GetProductsByCategories _value,
      $Res Function(_$_GetProductsByCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? listProduct = null,
  }) {
    return _then(_$_GetProductsByCategories(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoriesModel,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_GetProductsByCategories implements _GetProductsByCategories {
  const _$_GetProductsByCategories(
      {required this.category, required final List<ProductModel> listProduct})
      : _listProduct = listProduct;

  @override
  final CategoriesModel category;
  final List<ProductModel> _listProduct;
  @override
  List<ProductModel> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'ProductEvent.getProductsByCategories(category: $category, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsByCategories &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsByCategoriesCopyWith<_$_GetProductsByCategories>
      get copyWith =>
          __$$_GetProductsByCategoriesCopyWithImpl<_$_GetProductsByCategories>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) {
    return getProductsByCategories(category, listProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) {
    return getProductsByCategories?.call(category, listProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (getProductsByCategories != null) {
      return getProductsByCategories(category, listProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) {
    return getProductsByCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return getProductsByCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (getProductsByCategories != null) {
      return getProductsByCategories(this);
    }
    return orElse();
  }
}

abstract class _GetProductsByCategories implements ProductEvent {
  const factory _GetProductsByCategories(
          {required final CategoriesModel category,
          required final List<ProductModel> listProduct}) =
      _$_GetProductsByCategories;

  CategoriesModel get category;
  List<ProductModel> get listProduct;
  @JsonKey(ignore: true)
  _$$_GetProductsByCategoriesCopyWith<_$_GetProductsByCategories>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProductsBySubCategoriesCopyWith<$Res> {
  factory _$$_GetProductsBySubCategoriesCopyWith(
          _$_GetProductsBySubCategories value,
          $Res Function(_$_GetProductsBySubCategories) then) =
      __$$_GetProductsBySubCategoriesCopyWithImpl<$Res>;
  @useResult
  $Res call({TipoProductoModel subCategory, List<ProductModel> listProduct});
}

/// @nodoc
class __$$_GetProductsBySubCategoriesCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProductsBySubCategories>
    implements _$$_GetProductsBySubCategoriesCopyWith<$Res> {
  __$$_GetProductsBySubCategoriesCopyWithImpl(
      _$_GetProductsBySubCategories _value,
      $Res Function(_$_GetProductsBySubCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = null,
    Object? listProduct = null,
  }) {
    return _then(_$_GetProductsBySubCategories(
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as TipoProductoModel,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_GetProductsBySubCategories implements _GetProductsBySubCategories {
  const _$_GetProductsBySubCategories(
      {required this.subCategory,
      required final List<ProductModel> listProduct})
      : _listProduct = listProduct;

  @override
  final TipoProductoModel subCategory;
  final List<ProductModel> _listProduct;
  @override
  List<ProductModel> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'ProductEvent.getProductsBySubCategories(subCategory: $subCategory, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsBySubCategories &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategory,
      const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsBySubCategoriesCopyWith<_$_GetProductsBySubCategories>
      get copyWith => __$$_GetProductsBySubCategoriesCopyWithImpl<
          _$_GetProductsBySubCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) {
    return getProductsBySubCategories(subCategory, listProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) {
    return getProductsBySubCategories?.call(subCategory, listProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (getProductsBySubCategories != null) {
      return getProductsBySubCategories(subCategory, listProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) {
    return getProductsBySubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return getProductsBySubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (getProductsBySubCategories != null) {
      return getProductsBySubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetProductsBySubCategories implements ProductEvent {
  const factory _GetProductsBySubCategories(
          {required final TipoProductoModel subCategory,
          required final List<ProductModel> listProduct}) =
      _$_GetProductsBySubCategories;

  TipoProductoModel get subCategory;
  List<ProductModel> get listProduct;
  @JsonKey(ignore: true)
  _$$_GetProductsBySubCategoriesCopyWith<_$_GetProductsBySubCategories>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToInitialStateCopyWith<$Res> {
  factory _$$_ToInitialStateCopyWith(
          _$_ToInitialState value, $Res Function(_$_ToInitialState) then) =
      __$$_ToInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToInitialStateCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_ToInitialState>
    implements _$$_ToInitialStateCopyWith<$Res> {
  __$$_ToInitialStateCopyWithImpl(
      _$_ToInitialState _value, $Res Function(_$_ToInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToInitialState implements _ToInitialState {
  const _$_ToInitialState();

  @override
  String toString() {
    return 'ProductEvent.toInitialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) {
    return toInitialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) {
    return toInitialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (toInitialState != null) {
      return toInitialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) {
    return toInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return toInitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (toInitialState != null) {
      return toInitialState(this);
    }
    return orElse();
  }
}

abstract class _ToInitialState implements ProductEvent {
  const factory _ToInitialState() = _$_ToInitialState;
}

/// @nodoc
abstract class _$$_UpdatePrductFavoriteCopyWith<$Res> {
  factory _$$_UpdatePrductFavoriteCopyWith(_$_UpdatePrductFavorite value,
          $Res Function(_$_UpdatePrductFavorite) then) =
      __$$_UpdatePrductFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isfavorite, int productid});
}

/// @nodoc
class __$$_UpdatePrductFavoriteCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_UpdatePrductFavorite>
    implements _$$_UpdatePrductFavoriteCopyWith<$Res> {
  __$$_UpdatePrductFavoriteCopyWithImpl(_$_UpdatePrductFavorite _value,
      $Res Function(_$_UpdatePrductFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isfavorite = null,
    Object? productid = null,
  }) {
    return _then(_$_UpdatePrductFavorite(
      isfavorite: null == isfavorite
          ? _value.isfavorite
          : isfavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      productid: null == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdatePrductFavorite implements _UpdatePrductFavorite {
  const _$_UpdatePrductFavorite(
      {required this.isfavorite, required this.productid});

  @override
  final bool isfavorite;
  @override
  final int productid;

  @override
  String toString() {
    return 'ProductEvent.updatePrductFavorite(isfavorite: $isfavorite, productid: $productid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePrductFavorite &&
            (identical(other.isfavorite, isfavorite) ||
                other.isfavorite == isfavorite) &&
            (identical(other.productid, productid) ||
                other.productid == productid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isfavorite, productid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePrductFavoriteCopyWith<_$_UpdatePrductFavorite> get copyWith =>
      __$$_UpdatePrductFavoriteCopyWithImpl<_$_UpdatePrductFavorite>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) {
    return updatePrductFavorite(isfavorite, productid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) {
    return updatePrductFavorite?.call(isfavorite, productid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (updatePrductFavorite != null) {
      return updatePrductFavorite(isfavorite, productid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) {
    return updatePrductFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return updatePrductFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (updatePrductFavorite != null) {
      return updatePrductFavorite(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrductFavorite implements ProductEvent {
  const factory _UpdatePrductFavorite(
      {required final bool isfavorite,
      required final int productid}) = _$_UpdatePrductFavorite;

  bool get isfavorite;
  int get productid;
  @JsonKey(ignore: true)
  _$$_UpdatePrductFavoriteCopyWith<_$_UpdatePrductFavorite> get copyWith =>
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
    extends _$ProductEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'ProductEvent.signOut()';
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
    required TResult Function(String id) loadProducts,
    required TResult Function(
            CategoriesModel category, List<ProductModel> listProduct)
        getProductsByCategories,
    required TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)
        getProductsBySubCategories,
    required TResult Function() toInitialState,
    required TResult Function(bool isfavorite, int productid)
        updatePrductFavorite,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProducts,
    TResult? Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult? Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult? Function()? toInitialState,
    TResult? Function(bool isfavorite, int productid)? updatePrductFavorite,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProducts,
    TResult Function(CategoriesModel category, List<ProductModel> listProduct)?
        getProductsByCategories,
    TResult Function(
            TipoProductoModel subCategory, List<ProductModel> listProduct)?
        getProductsBySubCategories,
    TResult Function()? toInitialState,
    TResult Function(bool isfavorite, int productid)? updatePrductFavorite,
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
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_GetProductsByCategories value)
        getProductsByCategories,
    required TResult Function(_GetProductsBySubCategories value)
        getProductsBySubCategories,
    required TResult Function(_ToInitialState value) toInitialState,
    required TResult Function(_UpdatePrductFavorite value) updatePrductFavorite,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult? Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult? Function(_ToInitialState value)? toInitialState,
    TResult? Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_GetProductsByCategories value)? getProductsByCategories,
    TResult Function(_GetProductsBySubCategories value)?
        getProductsBySubCategories,
    TResult Function(_ToInitialState value)? toInitialState,
    TResult Function(_UpdatePrductFavorite value)? updatePrductFavorite,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements ProductEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)
        loadedSuccess,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductState.initial()';
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
    required TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)
        loadedSuccess,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
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
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
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
    extends _$ProductStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProductState.loading()';
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
    required TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)
        loadedSuccess,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
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
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedSuccessCopyWith<$Res> {
  factory _$$_LoadedSuccessCopyWith(
          _$_LoadedSuccess value, $Res Function(_$_LoadedSuccess) then) =
      __$$_LoadedSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductModel> productos,
      List<ProductModel> originalProductList,
      String token});
}

/// @nodoc
class __$$_LoadedSuccessCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_LoadedSuccess>
    implements _$$_LoadedSuccessCopyWith<$Res> {
  __$$_LoadedSuccessCopyWithImpl(
      _$_LoadedSuccess _value, $Res Function(_$_LoadedSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productos = null,
    Object? originalProductList = null,
    Object? token = null,
  }) {
    return _then(_$_LoadedSuccess(
      productos: null == productos
          ? _value._productos
          : productos // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      originalProductList: null == originalProductList
          ? _value._originalProductList
          : originalProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadedSuccess implements _LoadedSuccess {
  const _$_LoadedSuccess(
      {required final List<ProductModel> productos,
      required final List<ProductModel> originalProductList,
      required this.token})
      : _productos = productos,
        _originalProductList = originalProductList;

  final List<ProductModel> _productos;
  @override
  List<ProductModel> get productos {
    if (_productos is EqualUnmodifiableListView) return _productos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productos);
  }

  final List<ProductModel> _originalProductList;
  @override
  List<ProductModel> get originalProductList {
    if (_originalProductList is EqualUnmodifiableListView)
      return _originalProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originalProductList);
  }

  @override
  final String token;

  @override
  String toString() {
    return 'ProductState.loadedSuccess(productos: $productos, originalProductList: $originalProductList, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedSuccess &&
            const DeepCollectionEquality()
                .equals(other._productos, _productos) &&
            const DeepCollectionEquality()
                .equals(other._originalProductList, _originalProductList) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productos),
      const DeepCollectionEquality().hash(_originalProductList),
      token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedSuccessCopyWith<_$_LoadedSuccess> get copyWith =>
      __$$_LoadedSuccessCopyWithImpl<_$_LoadedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)
        loadedSuccess,
    required TResult Function(String message) failure,
  }) {
    return loadedSuccess(productos, originalProductList, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult? Function(String message)? failure,
  }) {
    return loadedSuccess?.call(productos, originalProductList, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(productos, originalProductList, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadedSuccess implements ProductState {
  const factory _LoadedSuccess(
      {required final List<ProductModel> productos,
      required final List<ProductModel> originalProductList,
      required final String token}) = _$_LoadedSuccess;

  List<ProductModel> get productos;
  List<ProductModel> get originalProductList;
  String get token;
  @JsonKey(ignore: true)
  _$$_LoadedSuccessCopyWith<_$_LoadedSuccess> get copyWith =>
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
    extends _$ProductStateCopyWithImpl<$Res, _$_Failure>
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
    return 'ProductState.failure(message: $message)';
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
    required TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)
        loadedSuccess,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productos,
            List<ProductModel> originalProductList, String token)?
        loadedSuccess,
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
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProductState {
  const factory _Failure({required final String message}) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
