import 'package:cafe_order_task/features/feature_products/domain/entities/product_entity.dart';
import 'package:cafe_order_task/features/feature_products/domain/usecases/fetch_products_usecase.dart';
import 'package:cafe_order_task/features/feature_products/domain/usecases/place_order_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_bloc.freezed.dart';

part 'product_event.dart';

part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final FetchProductsUseCase fetchProductsUseCase;
  final PlaceOrderUseCase placeOrderUseCase;

  ProductBloc(
    this.fetchProductsUseCase,
    this.placeOrderUseCase,
  ) : super(const ProductState.initial()) {
    on<LoadProducts>(_loadProducts);
    on<SelectProduct>(_selectProduct);
    on<Increment>(_increment);
    on<Decrement>(_decrement);
    on<ClearSelectedProduct>(_clearSelectedProduct);
    on<PlaceOrder>(_placeOrder);
  }

  Future<void> _loadProducts(
    LoadProducts event,
    Emitter<ProductState> emit,
  ) async {
    var selectedProducts = state is LoadedState
        ? (state as LoadedState).selectedProducts
        : <ProductEntity>[];

    emit(const ProductState.loading());

    try {
      final products = await fetchProductsUseCase.call();

      // Group products by groupName
      final Map<String, List<ProductEntity>> groupedProducts = {};
      for (var product in products) {
        if (!groupedProducts.containsKey(product.groupName)) {
          groupedProducts[product.groupName] = [];
        }
        groupedProducts[product.groupName]?.add(product);
      }
      emit(LoadedState(groupedProducts, selectedProducts));
    } on Exception catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }

  Future<void> _selectProduct(
    SelectProduct event,
    Emitter<ProductState> emit,
  ) async {
    if (state is! LoadedState) {
      return;
    }

    final currentState = state as LoadedState;
    final selectedProducts = currentState.selectedProducts;
    final productIndex =
        selectedProducts.indexWhere((p) => p.id == event.product.id);
    if (productIndex != -1) {
      final updatedProduct = selectedProducts[productIndex].updateQuantity(
        selectedProducts[productIndex].quantity + 1,
      );
      //selectedProducts[productIndex] = updatedProduct;
      final updatedSelectedProducts = selectedProducts
          .map((p) => p.id == event.product.id ? updatedProduct : p)
          .toList();

      emit(
        ProductState.loaded(
          currentState.products,
          updatedSelectedProducts,
        ),
      );
    } else {
      emit(
        ProductState.loaded(
          currentState.products,
          [...selectedProducts, event.product],
        ),
      );
    }
  }

  Future<void> _increment(
    Increment event,
    Emitter<ProductState> emit,
  ) async {
    if (state is! LoadedState) {
      return;
    }

    final currentState = state as LoadedState;
    final List<ProductEntity> updatedSelectedProducts =
        List.from(currentState.selectedProducts);

    // Find the product and increment its quantity
    final productIndex =
        updatedSelectedProducts.indexWhere((p) => p.id == event.product.id);
    if (productIndex != -1) {
      final updatedProduct =
          updatedSelectedProducts[productIndex].updateQuantity(
        updatedSelectedProducts[productIndex].quantity + 1,
      );
      updatedSelectedProducts[productIndex] = updatedProduct;
    }

    emit(
      ProductState.loaded(currentState.products, updatedSelectedProducts),
    );
  }

  Future<void> _decrement(
    Decrement event,
    Emitter<ProductState> emit,
  ) async {
    if (state is! LoadedState) {
      return;
    }

    final currentState = state as LoadedState;
    final List<ProductEntity> updatedSelectedProducts =
        List.from(currentState.selectedProducts);

    // Find the product and decrement its quantity
    final productIndex =
        updatedSelectedProducts.indexWhere((p) => p.id == event.product.id);
    if (productIndex != -1) {
      final newQuantity = updatedSelectedProducts[productIndex].quantity - 1;

      if (newQuantity > 0) {
        final updatedProduct =
            updatedSelectedProducts[productIndex].updateQuantity(newQuantity);
        updatedSelectedProducts[productIndex] = updatedProduct;
      }
    }

    emit(
      ProductState.loaded(currentState.products, updatedSelectedProducts),
    );
  }

  Future<void> _clearSelectedProduct(
    ClearSelectedProduct event,
    Emitter<ProductState> emit,
  ) async {
    if (state is! LoadedState) {
      return;
    }

    final currentState = state as LoadedState;
    final selectedProducts = currentState.selectedProducts;
    // Find the product in the selected products list and change the quantity
    final updatedProducts = selectedProducts.where((product) {
      return product.id != event.product.id;
    }).toList();
    emit(
      ProductState.loaded(currentState.products, updatedProducts),
    );
  }

  Future<void> _placeOrder(
    PlaceOrder event,
    Emitter<ProductState> emit,
  ) async {
    if (state is! LoadedState) {
      return;
    }

    try {
      final res = await placeOrderUseCase.call(event.products);
      if (res) {
        emit(ProductState.loaded((state as LoadedState).products, []));
        emit(const ProductState.orderPlaced());
      }
    } on Exception catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }
}
