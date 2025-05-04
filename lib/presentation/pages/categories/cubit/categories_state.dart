part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    String? error,
    @Default(Status.init) Status status,
    @Default([]) List<Category> categories,
  }) = _CategoriesState;
}
