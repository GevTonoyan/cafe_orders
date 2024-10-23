part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts() = LoadProducts;

  const factory ProductEvent.selectProduct(
    ProductEntity product,
  ) = SelectProduct;

  const factory ProductEvent.increment(
    ProductEntity product,
  ) = Increment;

  const factory ProductEvent.decrement(
    ProductEntity product,
  ) = Decrement;

  const factory ProductEvent.clearSelectedProduct(
    ProductEntity product,
  ) = ClearSelectedProduct;

  const factory ProductEvent.placeOrder(
    List<ProductEntity> products,
  ) = PlaceOrder;
}
