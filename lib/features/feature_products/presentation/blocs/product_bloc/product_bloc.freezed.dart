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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
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

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProductsImplCopyWith<$Res> {
  factory _$$LoadProductsImplCopyWith(
          _$LoadProductsImpl value, $Res Function(_$LoadProductsImpl) then) =
      __$$LoadProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadProductsImpl>
    implements _$$LoadProductsImplCopyWith<$Res> {
  __$$LoadProductsImplCopyWithImpl(
      _$LoadProductsImpl _value, $Res Function(_$LoadProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadProductsImpl implements LoadProducts {
  const _$LoadProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.loadProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class LoadProducts implements ProductEvent {
  const factory LoadProducts() = _$LoadProductsImpl;
}

/// @nodoc
abstract class _$$SelectProductImplCopyWith<$Res> {
  factory _$$SelectProductImplCopyWith(
          _$SelectProductImpl value, $Res Function(_$SelectProductImpl) then) =
      __$$SelectProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$SelectProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectProductImpl>
    implements _$$SelectProductImplCopyWith<$Res> {
  __$$SelectProductImplCopyWithImpl(
      _$SelectProductImpl _value, $Res Function(_$SelectProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SelectProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$SelectProductImpl implements SelectProduct {
  const _$SelectProductImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.selectProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProductImplCopyWith<_$SelectProductImpl> get copyWith =>
      __$$SelectProductImplCopyWithImpl<_$SelectProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) {
    return selectProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) {
    return selectProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return selectProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return selectProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(this);
    }
    return orElse();
  }
}

abstract class SelectProduct implements ProductEvent {
  const factory SelectProduct(final ProductEntity product) =
      _$SelectProductImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectProductImplCopyWith<_$SelectProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementImplCopyWith<$Res> {
  factory _$$IncrementImplCopyWith(
          _$IncrementImpl value, $Res Function(_$IncrementImpl) then) =
      __$$IncrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$IncrementImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$IncrementImpl>
    implements _$$IncrementImplCopyWith<$Res> {
  __$$IncrementImplCopyWithImpl(
      _$IncrementImpl _value, $Res Function(_$IncrementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$IncrementImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$IncrementImpl implements Increment {
  const _$IncrementImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.increment(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      __$$IncrementImplCopyWithImpl<_$IncrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) {
    return increment(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) {
    return increment?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class Increment implements ProductEvent {
  const factory Increment(final ProductEntity product) = _$IncrementImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementImplCopyWith<$Res> {
  factory _$$DecrementImplCopyWith(
          _$DecrementImpl value, $Res Function(_$DecrementImpl) then) =
      __$$DecrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$DecrementImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$DecrementImpl>
    implements _$$DecrementImplCopyWith<$Res> {
  __$$DecrementImplCopyWithImpl(
      _$DecrementImpl _value, $Res Function(_$DecrementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$DecrementImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$DecrementImpl implements Decrement {
  const _$DecrementImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.decrement(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      __$$DecrementImplCopyWithImpl<_$DecrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) {
    return decrement(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) {
    return decrement?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class Decrement implements ProductEvent {
  const factory Decrement(final ProductEntity product) = _$DecrementImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectedProductImplCopyWith<$Res> {
  factory _$$ClearSelectedProductImplCopyWith(_$ClearSelectedProductImpl value,
          $Res Function(_$ClearSelectedProductImpl) then) =
      __$$ClearSelectedProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$ClearSelectedProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ClearSelectedProductImpl>
    implements _$$ClearSelectedProductImplCopyWith<$Res> {
  __$$ClearSelectedProductImplCopyWithImpl(_$ClearSelectedProductImpl _value,
      $Res Function(_$ClearSelectedProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ClearSelectedProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$ClearSelectedProductImpl implements ClearSelectedProduct {
  const _$ClearSelectedProductImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.clearSelectedProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectedProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearSelectedProductImplCopyWith<_$ClearSelectedProductImpl>
      get copyWith =>
          __$$ClearSelectedProductImplCopyWithImpl<_$ClearSelectedProductImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) {
    return clearSelectedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) {
    return clearSelectedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) {
    if (clearSelectedProduct != null) {
      return clearSelectedProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return clearSelectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return clearSelectedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (clearSelectedProduct != null) {
      return clearSelectedProduct(this);
    }
    return orElse();
  }
}

abstract class ClearSelectedProduct implements ProductEvent {
  const factory ClearSelectedProduct(final ProductEntity product) =
      _$ClearSelectedProductImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearSelectedProductImplCopyWith<_$ClearSelectedProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderImplCopyWith<$Res> {
  factory _$$PlaceOrderImplCopyWith(
          _$PlaceOrderImpl value, $Res Function(_$PlaceOrderImpl) then) =
      __$$PlaceOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$PlaceOrderImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$PlaceOrderImpl>
    implements _$$PlaceOrderImplCopyWith<$Res> {
  __$$PlaceOrderImplCopyWithImpl(
      _$PlaceOrderImpl _value, $Res Function(_$PlaceOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$PlaceOrderImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$PlaceOrderImpl implements PlaceOrder {
  const _$PlaceOrderImpl(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductEvent.placeOrder(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      __$$PlaceOrderImplCopyWithImpl<_$PlaceOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductEntity product) selectProduct,
    required TResult Function(ProductEntity product) increment,
    required TResult Function(ProductEntity product) decrement,
    required TResult Function(ProductEntity product) clearSelectedProduct,
    required TResult Function(List<ProductEntity> products) placeOrder,
  }) {
    return placeOrder(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductEntity product)? selectProduct,
    TResult? Function(ProductEntity product)? increment,
    TResult? Function(ProductEntity product)? decrement,
    TResult? Function(ProductEntity product)? clearSelectedProduct,
    TResult? Function(List<ProductEntity> products)? placeOrder,
  }) {
    return placeOrder?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductEntity product)? selectProduct,
    TResult Function(ProductEntity product)? increment,
    TResult Function(ProductEntity product)? decrement,
    TResult Function(ProductEntity product)? clearSelectedProduct,
    TResult Function(List<ProductEntity> products)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(SelectProduct value) selectProduct,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(ClearSelectedProduct value) clearSelectedProduct,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(SelectProduct value)? selectProduct,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(SelectProduct value)? selectProduct,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(ClearSelectedProduct value)? clearSelectedProduct,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class PlaceOrder implements ProductEvent {
  const factory PlaceOrder(final List<ProductEntity> products) =
      _$PlaceOrderImpl;

  List<ProductEntity> get products;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)
        loaded,
    required TResult Function() orderPlaced,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult? Function()? orderPlaced,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult Function()? orderPlaced,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(OrderPlacedState value) orderPlaced,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(OrderPlacedState value)? orderPlaced,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(OrderPlacedState value)? orderPlaced,
    TResult Function(ErrorState value)? error,
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

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)
        loaded,
    required TResult Function() orderPlaced,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult? Function()? orderPlaced,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult Function()? orderPlaced,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(OrderPlacedState value) orderPlaced,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(OrderPlacedState value)? orderPlaced,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(OrderPlacedState value)? orderPlaced,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements ProductState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)
        loaded,
    required TResult Function() orderPlaced,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult? Function()? orderPlaced,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult Function()? orderPlaced,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(OrderPlacedState value) orderPlaced,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(OrderPlacedState value)? orderPlaced,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(OrderPlacedState value)? orderPlaced,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ProductState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<String, List<ProductEntity>> products,
      List<ProductEntity> selectedProducts});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? selectedProducts = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ProductEntity>>,
      null == selectedProducts
          ? _value._selectedProducts
          : selectedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(final Map<String, List<ProductEntity>> products,
      final List<ProductEntity> selectedProducts)
      : _products = products,
        _selectedProducts = selectedProducts;

  final Map<String, List<ProductEntity>> _products;
  @override
  Map<String, List<ProductEntity>> get products {
    if (_products is EqualUnmodifiableMapView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_products);
  }

  final List<ProductEntity> _selectedProducts;
  @override
  List<ProductEntity> get selectedProducts {
    if (_selectedProducts is EqualUnmodifiableListView)
      return _selectedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedProducts);
  }

  @override
  String toString() {
    return 'ProductState.loaded(products: $products, selectedProducts: $selectedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._selectedProducts, _selectedProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_selectedProducts));

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)
        loaded,
    required TResult Function() orderPlaced,
    required TResult Function(String message) error,
  }) {
    return loaded(products, selectedProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult? Function()? orderPlaced,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(products, selectedProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult Function()? orderPlaced,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, selectedProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(OrderPlacedState value) orderPlaced,
    required TResult Function(ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(OrderPlacedState value)? orderPlaced,
    TResult? Function(ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(OrderPlacedState value)? orderPlaced,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements ProductState {
  const factory LoadedState(final Map<String, List<ProductEntity>> products,
      final List<ProductEntity> selectedProducts) = _$LoadedStateImpl;

  Map<String, List<ProductEntity>> get products;
  List<ProductEntity> get selectedProducts;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderPlacedStateImplCopyWith<$Res> {
  factory _$$OrderPlacedStateImplCopyWith(_$OrderPlacedStateImpl value,
          $Res Function(_$OrderPlacedStateImpl) then) =
      __$$OrderPlacedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderPlacedStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$OrderPlacedStateImpl>
    implements _$$OrderPlacedStateImplCopyWith<$Res> {
  __$$OrderPlacedStateImplCopyWithImpl(_$OrderPlacedStateImpl _value,
      $Res Function(_$OrderPlacedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderPlacedStateImpl implements OrderPlacedState {
  const _$OrderPlacedStateImpl();

  @override
  String toString() {
    return 'ProductState.orderPlaced()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderPlacedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)
        loaded,
    required TResult Function() orderPlaced,
    required TResult Function(String message) error,
  }) {
    return orderPlaced();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult? Function()? orderPlaced,
    TResult? Function(String message)? error,
  }) {
    return orderPlaced?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult Function()? orderPlaced,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (orderPlaced != null) {
      return orderPlaced();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(OrderPlacedState value) orderPlaced,
    required TResult Function(ErrorState value) error,
  }) {
    return orderPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(OrderPlacedState value)? orderPlaced,
    TResult? Function(ErrorState value)? error,
  }) {
    return orderPlaced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(OrderPlacedState value)? orderPlaced,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (orderPlaced != null) {
      return orderPlaced(this);
    }
    return orElse();
  }
}

abstract class OrderPlacedState implements ProductState {
  const factory OrderPlacedState() = _$OrderPlacedStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)
        loaded,
    required TResult Function() orderPlaced,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult? Function()? orderPlaced,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, List<ProductEntity>> products,
            List<ProductEntity> selectedProducts)?
        loaded,
    TResult Function()? orderPlaced,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(OrderPlacedState value) orderPlaced,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(OrderPlacedState value)? orderPlaced,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(OrderPlacedState value)? orderPlaced,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements ProductState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
