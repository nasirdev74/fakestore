part of 'category_products_cubit.dart';

@freezed
class CategoryProductsState with _$CategoryProductsState {
  const factory CategoryProductsState({
    String? error,
    @Default(Status.init) Status status,
    @Default([]) List<Product> products,
  }) = _CategoryProductsState;
}
