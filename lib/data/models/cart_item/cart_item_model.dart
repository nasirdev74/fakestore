import 'package:hive/hive.dart';
import 'package:app/domain/entities/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app/data/models/product/product_model.dart';

part 'cart_item_model.freezed.dart';

part 'cart_item_model.g.dart';

@freezed
@HiveType(typeId: 0)
class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    @HiveField(0) required int productId,
    @HiveField(1) required int quantity,
    @HiveField(2) required ProductModel product,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);

  CartItem toEntity() =>
      CartItem(productId: productId, quantity: quantity, product: product.toEntity());

  static const hiveBox = "carts";
}
