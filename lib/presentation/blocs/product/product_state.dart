import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/product.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = Initial;
  const factory ProductState.loading() = Loading;
  const factory ProductState.loadedProducts(List<Product> products) = LoadedProducts;
  const factory ProductState.loadedProductDetails(Product product) = LoadedProductDetails;
  const factory ProductState.error(String message) = Error;
}