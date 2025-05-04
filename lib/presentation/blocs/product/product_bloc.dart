import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_products.dart';
import '../../../domain/usecases/get_product_details.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProducts getProducts;
  final GetProductDetails getProductDetails;

  ProductBloc({
    required this.getProducts,
    required this.getProductDetails,
  }) : super(const ProductState.initial()) {
    on<FetchProducts>(_onFetchProducts);
    on<FetchProductDetails>(_onFetchProductDetails);
  }

  Future<void> _onFetchProducts(FetchProducts event, Emitter<ProductState> emit) async {
    emit(const ProductState.loading());
    try {
      final products = await getProducts(limit: event.limit, sort: event.sort);
      emit(ProductState.loadedProducts(products));
    } catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }

  Future<void> _onFetchProductDetails(FetchProductDetails event, Emitter<ProductState> emit) async {
    emit(const ProductState.loading());
    try {
      final product = await getProductDetails(event.id);
      emit(ProductState.loadedProductDetails(product));
    } catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }
}