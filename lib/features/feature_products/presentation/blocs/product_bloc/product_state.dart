part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = InitialState;

  const factory ProductState.loading() = LoadingState;

  const factory ProductState.loaded(
    Map<String, List<ProductEntity>> products,
    List<ProductEntity> selectedProducts,
  ) = LoadedState;

  const factory ProductState.orderPlaced() = OrderPlacedState;

  const factory ProductState.error(String message) = ErrorState;
}
