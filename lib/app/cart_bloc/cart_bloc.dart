import 'package:app/core/utils/status.dart';
import 'package:injectable/injectable.dart';
import 'package:app/domain/usecases/cart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/domain/entities/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@singleton
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartUseCase cartUseCase;

  CartBloc({required this.cartUseCase}) : super(const CartState()) {
    on<CartFetchItems>(_onFetchItems);
    on<CartAddItem>(_onAddItem);
    on<CartRemoveItem>(_onRemoveItem);
    on<CartUpdateQuantity>(_onUpdateQuantity);
    add(const CartFetchItems());
  }

  Future<void> _onFetchItems(event, emit) async {
    try {
      final cartItems = await cartUseCase.getCartItems();
      emit(state.copyWith(status: Status.success, cartItems: cartItems));
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }

  Future<void> _onAddItem(CartAddItem event, emit) async {
    try {
      await cartUseCase.addToCart(event.item);
      add(const CartFetchItems());
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }

  Future<void> _onRemoveItem(CartRemoveItem event, emit) async {
    try {
      await cartUseCase.removeFromCart(event.productId);
      add(const CartFetchItems());
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }

  Future<void> _onUpdateQuantity(CartUpdateQuantity event, emit) async {
    try {
      await cartUseCase.updateCartQuantity(event.productId, event.quantity, event.item);
      final cartItems = await cartUseCase.getCartItems();
      emit(state.copyWith(status: Status.success, cartItems: cartItems));
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }
}
