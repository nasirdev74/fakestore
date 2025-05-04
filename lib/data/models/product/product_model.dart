import 'package:hive/hive.dart';
import 'package:app/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
@HiveType(typeId: 1)
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) required double price,
    @HiveField(3) required String description,
    @HiveField(4) required String category,
    @HiveField(5) required String image,
    @HiveField(6) required RatingModel rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Product toEntity() => Product(
    id: id,
    title: title,
    price: price,
    description: description,
    category: category,
    image: image,
    rating: rating.toEntity(),
  );
}

@freezed
@HiveType(typeId: 2)
class RatingModel with _$RatingModel {
  const RatingModel._();

  const factory RatingModel({
    @HiveField(0) required double rate,
    @HiveField(1) required int count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) => _$RatingModelFromJson(json);

  Rating toEntity() => Rating(rate: rate, count: count);
}
