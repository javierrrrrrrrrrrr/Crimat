// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? categorySelectedIndex) selectCategory,
    required TResult Function(
            int categorySelectedIndex, int subCategorySelectedIndex)
        selectSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? categorySelectedIndex)? selectCategory,
    TResult? Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? categorySelectedIndex)? selectCategory,
    TResult Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubCategory value) selectSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubCategory value)? selectSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubCategory value)? selectSubCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'CategoriesEvent.load()';
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
    required TResult Function(int? categorySelectedIndex) selectCategory,
    required TResult Function(
            int categorySelectedIndex, int subCategorySelectedIndex)
        selectSubCategory,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? categorySelectedIndex)? selectCategory,
    TResult? Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? categorySelectedIndex)? selectCategory,
    TResult Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
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
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubCategory value) selectSubCategory,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubCategory value)? selectSubCategory,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubCategory value)? selectSubCategory,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements CategoriesEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_SelectCategoryCopyWith<$Res> {
  factory _$$_SelectCategoryCopyWith(
          _$_SelectCategory value, $Res Function(_$_SelectCategory) then) =
      __$$_SelectCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int? categorySelectedIndex});
}

/// @nodoc
class __$$_SelectCategoryCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$_SelectCategory>
    implements _$$_SelectCategoryCopyWith<$Res> {
  __$$_SelectCategoryCopyWithImpl(
      _$_SelectCategory _value, $Res Function(_$_SelectCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorySelectedIndex = freezed,
  }) {
    return _then(_$_SelectCategory(
      categorySelectedIndex: freezed == categorySelectedIndex
          ? _value.categorySelectedIndex
          : categorySelectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SelectCategory implements _SelectCategory {
  const _$_SelectCategory({this.categorySelectedIndex});

  @override
  final int? categorySelectedIndex;

  @override
  String toString() {
    return 'CategoriesEvent.selectCategory(categorySelectedIndex: $categorySelectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCategory &&
            (identical(other.categorySelectedIndex, categorySelectedIndex) ||
                other.categorySelectedIndex == categorySelectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categorySelectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      __$$_SelectCategoryCopyWithImpl<_$_SelectCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? categorySelectedIndex) selectCategory,
    required TResult Function(
            int categorySelectedIndex, int subCategorySelectedIndex)
        selectSubCategory,
  }) {
    return selectCategory(categorySelectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? categorySelectedIndex)? selectCategory,
    TResult? Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
  }) {
    return selectCategory?.call(categorySelectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? categorySelectedIndex)? selectCategory,
    TResult Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(categorySelectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubCategory value) selectSubCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubCategory value)? selectSubCategory,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubCategory value)? selectSubCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements CategoriesEvent {
  const factory _SelectCategory({final int? categorySelectedIndex}) =
      _$_SelectCategory;

  int? get categorySelectedIndex;
  @JsonKey(ignore: true)
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectSubCategoryCopyWith<$Res> {
  factory _$$_SelectSubCategoryCopyWith(_$_SelectSubCategory value,
          $Res Function(_$_SelectSubCategory) then) =
      __$$_SelectSubCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int categorySelectedIndex, int subCategorySelectedIndex});
}

/// @nodoc
class __$$_SelectSubCategoryCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$_SelectSubCategory>
    implements _$$_SelectSubCategoryCopyWith<$Res> {
  __$$_SelectSubCategoryCopyWithImpl(
      _$_SelectSubCategory _value, $Res Function(_$_SelectSubCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorySelectedIndex = null,
    Object? subCategorySelectedIndex = null,
  }) {
    return _then(_$_SelectSubCategory(
      categorySelectedIndex: null == categorySelectedIndex
          ? _value.categorySelectedIndex
          : categorySelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subCategorySelectedIndex: null == subCategorySelectedIndex
          ? _value.subCategorySelectedIndex
          : subCategorySelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectSubCategory implements _SelectSubCategory {
  const _$_SelectSubCategory(
      {required this.categorySelectedIndex,
      required this.subCategorySelectedIndex});

  @override
  final int categorySelectedIndex;
  @override
  final int subCategorySelectedIndex;

  @override
  String toString() {
    return 'CategoriesEvent.selectSubCategory(categorySelectedIndex: $categorySelectedIndex, subCategorySelectedIndex: $subCategorySelectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectSubCategory &&
            (identical(other.categorySelectedIndex, categorySelectedIndex) ||
                other.categorySelectedIndex == categorySelectedIndex) &&
            (identical(
                    other.subCategorySelectedIndex, subCategorySelectedIndex) ||
                other.subCategorySelectedIndex == subCategorySelectedIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categorySelectedIndex, subCategorySelectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectSubCategoryCopyWith<_$_SelectSubCategory> get copyWith =>
      __$$_SelectSubCategoryCopyWithImpl<_$_SelectSubCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? categorySelectedIndex) selectCategory,
    required TResult Function(
            int categorySelectedIndex, int subCategorySelectedIndex)
        selectSubCategory,
  }) {
    return selectSubCategory(categorySelectedIndex, subCategorySelectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? categorySelectedIndex)? selectCategory,
    TResult? Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
  }) {
    return selectSubCategory?.call(
        categorySelectedIndex, subCategorySelectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? categorySelectedIndex)? selectCategory,
    TResult Function(int categorySelectedIndex, int subCategorySelectedIndex)?
        selectSubCategory,
    required TResult orElse(),
  }) {
    if (selectSubCategory != null) {
      return selectSubCategory(categorySelectedIndex, subCategorySelectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubCategory value) selectSubCategory,
  }) {
    return selectSubCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubCategory value)? selectSubCategory,
  }) {
    return selectSubCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubCategory value)? selectSubCategory,
    required TResult orElse(),
  }) {
    if (selectSubCategory != null) {
      return selectSubCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectSubCategory implements CategoriesEvent {
  const factory _SelectSubCategory(
      {required final int categorySelectedIndex,
      required final int subCategorySelectedIndex}) = _$_SelectSubCategory;

  int get categorySelectedIndex;
  int get subCategorySelectedIndex;
  @JsonKey(ignore: true)
  _$$_SelectSubCategoryCopyWith<_$_SelectSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesModel> categories) success,
    required TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)
        selectedCategory,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesModel> categories)? success,
    TResult? Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesModel> categories)? success,
    TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CategoriesState.initial()';
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
    required TResult Function(List<CategoriesModel> categories) success,
    required TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)
        selectedCategory,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesModel> categories)? success,
    TResult? Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesModel> categories)? success,
    TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoriesState {
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CategoriesState.loading()';
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
    required TResult Function(List<CategoriesModel> categories) success,
    required TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)
        selectedCategory,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesModel> categories)? success,
    TResult? Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesModel> categories)? success,
    TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CategoriesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoriesModel> categories});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_Success(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required final List<CategoriesModel> categories})
      : _categories = categories;

  final List<CategoriesModel> _categories;
  @override
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.success(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

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
    required TResult Function(List<CategoriesModel> categories) success,
    required TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)
        selectedCategory,
    required TResult Function(String message) failure,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesModel> categories)? success,
    TResult? Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesModel> categories)? success,
    TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CategoriesState {
  const factory _Success({required final List<CategoriesModel> categories}) =
      _$_Success;

  List<CategoriesModel> get categories;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedCategoryCopyWith<$Res> {
  factory _$$_SelectedCategoryCopyWith(
          _$_SelectedCategory value, $Res Function(_$_SelectedCategory) then) =
      __$$_SelectedCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CategoriesModel> categories,
      List<TipoProductoModel>? subCategiries,
      int categogyIndex,
      int subCategogyIndex});
}

/// @nodoc
class __$$_SelectedCategoryCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_SelectedCategory>
    implements _$$_SelectedCategoryCopyWith<$Res> {
  __$$_SelectedCategoryCopyWithImpl(
      _$_SelectedCategory _value, $Res Function(_$_SelectedCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? subCategiries = freezed,
    Object? categogyIndex = null,
    Object? subCategogyIndex = null,
  }) {
    return _then(_$_SelectedCategory(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      subCategiries: freezed == subCategiries
          ? _value._subCategiries
          : subCategiries // ignore: cast_nullable_to_non_nullable
              as List<TipoProductoModel>?,
      categogyIndex: null == categogyIndex
          ? _value.categogyIndex
          : categogyIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subCategogyIndex: null == subCategogyIndex
          ? _value.subCategogyIndex
          : subCategogyIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedCategory implements _SelectedCategory {
  const _$_SelectedCategory(
      {required final List<CategoriesModel> categories,
      final List<TipoProductoModel>? subCategiries,
      required this.categogyIndex,
      required this.subCategogyIndex})
      : _categories = categories,
        _subCategiries = subCategiries;

  final List<CategoriesModel> _categories;
  @override
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<TipoProductoModel>? _subCategiries;
  @override
  List<TipoProductoModel>? get subCategiries {
    final value = _subCategiries;
    if (value == null) return null;
    if (_subCategiries is EqualUnmodifiableListView) return _subCategiries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int categogyIndex;
  @override
  final int subCategogyIndex;

  @override
  String toString() {
    return 'CategoriesState.selectedCategory(categories: $categories, subCategiries: $subCategiries, categogyIndex: $categogyIndex, subCategogyIndex: $subCategogyIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedCategory &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subCategiries, _subCategiries) &&
            (identical(other.categogyIndex, categogyIndex) ||
                other.categogyIndex == categogyIndex) &&
            (identical(other.subCategogyIndex, subCategogyIndex) ||
                other.subCategogyIndex == subCategogyIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_subCategiries),
      categogyIndex,
      subCategogyIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCategoryCopyWith<_$_SelectedCategory> get copyWith =>
      __$$_SelectedCategoryCopyWithImpl<_$_SelectedCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesModel> categories) success,
    required TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)
        selectedCategory,
    required TResult Function(String message) failure,
  }) {
    return selectedCategory(
        categories, subCategiries, categogyIndex, subCategogyIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesModel> categories)? success,
    TResult? Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult? Function(String message)? failure,
  }) {
    return selectedCategory?.call(
        categories, subCategiries, categogyIndex, subCategogyIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesModel> categories)? success,
    TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(
          categories, subCategiries, categogyIndex, subCategogyIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_Failure value) failure,
  }) {
    return selectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_Failure value)? failure,
  }) {
    return selectedCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectedCategory implements CategoriesState {
  const factory _SelectedCategory(
      {required final List<CategoriesModel> categories,
      final List<TipoProductoModel>? subCategiries,
      required final int categogyIndex,
      required final int subCategogyIndex}) = _$_SelectedCategory;

  List<CategoriesModel> get categories;
  List<TipoProductoModel>? get subCategiries;
  int get categogyIndex;
  int get subCategogyIndex;
  @JsonKey(ignore: true)
  _$$_SelectedCategoryCopyWith<_$_SelectedCategory> get copyWith =>
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$_Failure>
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
    return 'CategoriesState.failure(message: $message)';
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
    required TResult Function(List<CategoriesModel> categories) success,
    required TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)
        selectedCategory,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesModel> categories)? success,
    TResult? Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesModel> categories)? success,
    TResult Function(
            List<CategoriesModel> categories,
            List<TipoProductoModel>? subCategiries,
            int categogyIndex,
            int subCategogyIndex)?
        selectedCategory,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CategoriesState {
  const factory _Failure({required final String message}) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
