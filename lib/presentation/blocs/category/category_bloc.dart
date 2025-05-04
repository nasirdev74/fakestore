import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_categories.dart';
import '../../../domain/usecases/get_products_by_category.dart';
import 'category_event.dart';
import 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategories getCategories;
  final GetProductsByCategory getProductsByCategory;

  CategoryBloc({
    required this.getCategories,
    required this.getProductsByCategory,
  }) : super(const CategoryState.initial()) {
    on<FetchCategories>(_onFetchCategories);
    on<FetchCategoryProducts>(_onFetchCategoryProducts);
  }

  Future<void> _onFetchCategories(FetchCategories event, Emitter<CategoryState> emit) async {
    emit(const CategoryState.loading());
    try {
      final categories = await getCategories();
      emit(CategoryState.loadedCategories(categories));
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }

  Future<void> _onFetchCategoryProducts(FetchCategoryProducts event, Emitter<CategoryState> emit) async {
    emit(const CategoryState.loading());
    try {
      final products = await getProductsByCategory(event.category, sort: event.sort);
      emit(CategoryState.loadedCategoryProducts(products));
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }
}