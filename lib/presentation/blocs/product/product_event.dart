import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchProducts({int? limit, String? sort}) = FetchProducts;
  const factory ProductEvent.fetchProductDetails(int id) = FetchProductDetails;
}