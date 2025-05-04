import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.freezed.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetchCategories() = FetchCategories;
  const factory CategoryEvent.fetchCategoryProducts(String category, {String? sort}) = FetchCategoryProducts;
}