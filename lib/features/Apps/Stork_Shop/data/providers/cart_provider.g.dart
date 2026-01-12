// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Cart)
const cartProvider = CartProvider._();

final class CartProvider extends $NotifierProvider<Cart, List<ProductModel>> {
  const CartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  Cart create() => Cart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<ProductModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ProductModel>>(value),
    );
  }
}

String _$cartHash() => r'4be539b15107d644b8e41fcba5f95646ac2f5193';

abstract class _$Cart extends $Notifier<List<ProductModel>> {
  List<ProductModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<ProductModel>, List<ProductModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<ProductModel>, List<ProductModel>>,
              List<ProductModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
