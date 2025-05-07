import 'package:app/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({required String name}) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Category toEntity() => Category(name: name);
}
