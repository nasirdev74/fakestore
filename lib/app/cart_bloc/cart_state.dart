part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    String? error,
    @Default(Status.init) Status status,
    @Default([]) List<CartItem> cartItems,
  }) = _CartState;
}
