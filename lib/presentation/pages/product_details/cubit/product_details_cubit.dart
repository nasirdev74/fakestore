import 'package:app/core/utils/status.dart';
import 'package:injectable/injectable.dart';
import 'package:app/app/safe_emit_cubit.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/domain/usecases/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.dart';

part 'product_details_cubit.freezed.dart';

@injectable
class ProductDetailsCubit extends SafeEmitCubit<ProductDetailsState> {
  final ProductUseCase productUseCase;

  ProductDetailsCubit({required this.productUseCase}) : super(const ProductDetailsState());

  Future<void> fetchProductDetails(int id) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final product = await productUseCase.getProductDetails(id);
      emit(state.copyWith(status: Status.success, productDetails: product));
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }
}
