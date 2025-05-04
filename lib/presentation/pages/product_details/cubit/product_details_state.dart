part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    String? error,
    Product? productDetails,
    @Default(Status.init) Status status,
  }) = _ProductDetailsState;
}
