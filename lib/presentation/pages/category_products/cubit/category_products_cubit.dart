import 'package:app/core/utils/status.dart';
import 'package:injectable/injectable.dart';
import 'package:app/app/safe_emit_cubit.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/domain/usecases/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_products_state.dart';

part 'category_products_cubit.freezed.dart';

@injectable
class CategoryProductsCubit extends SafeEmitCubit<CategoryProductsState> {
  final ProductUseCase productUseCase;

  CategoryProductsCubit({required this.productUseCase}) : super(const CategoryProductsState());

  Future<void> fetchProducts(String category) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final products = await productUseCase.getProductsByCategory(category);
      emit(state.copyWith(status: Status.success, products: products));
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }
}
