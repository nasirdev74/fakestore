import 'package:app/core/utils/status.dart';
import 'package:injectable/injectable.dart';
import 'package:app/app/safe_emit_cubit.dart';
import 'package:app/domain/usecases/product.dart';
import 'package:app/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.dart';

part 'products_cubit.freezed.dart';

@injectable
class ProductsCubit extends SafeEmitCubit<ProductsState> {
  final ProductUseCase productUseCase;

  ProductsCubit({required this.productUseCase}) : super(const ProductsState());

  Future<void> fetchProducts({int? limit, String? sort}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final products = await productUseCase.getProducts(limit: limit, sort: sort);
      emit(state.copyWith(status: Status.success, products: products));
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }
}
