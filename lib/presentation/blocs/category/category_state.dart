import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/category.dart';
import '../../../domain/entities/product.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = Initial;
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.loadedCategories(List<Category> categories) = LoadedCategories;
  const factory CategoryState.loadedCategoryProducts(List<Product> products) = LoadedCategoryProducts;
  const factory CategoryState.error(String message) = Error;
}