part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    String? error,
    @Default(Status.init) Status status,
    @Default([]) List<Product> products,
  }) = _ProductsState;
}
