part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.fetchItems() = CartFetchItems;
  const factory CartEvent.addItem({required CartItem item}) = CartAddItem;
  const factory CartEvent.removeItem({required int productId}) = CartRemoveItem;
  const factory CartEvent.updateQuantity({
    required int productId,
    required int quantity,
    required CartItem item,
  }) = CartUpdateQuantity;
}