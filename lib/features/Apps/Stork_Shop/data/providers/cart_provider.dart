import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stork/features/Apps/Stork_Shop/data/models/product_model.dart';

part 'cart_provider.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  List<ProductModel> build() {
    return [];
  }

  void addProduct(ProductModel product) {
    state = [...state, product];
  }

  void removeProduct(String productId) {
    state = state.where((p) => p.productId != productId).toList();
  }
}
