import 'package:app/domain/repositories/cart_repository.dart';
import 'package:app/domain/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import '../core/network/api_client.dart';
import '../data/datasources/local/cart_local_datasource.dart';
import '../data/datasources/remote/product_remote_datasource.dart';
import '../data/repositories/product_repository_impl.dart';
import '../data/repositories/cart_repository_impl.dart';
import '../domain/usecases/get_products.dart';
import '../domain/usecases/get_product_details.dart';
import '../domain/usecases/get_categories.dart';
import '../domain/usecases/get_products_by_category.dart';
import '../domain/usecases/add_to_cart.dart';
import '../domain/usecases/remove_from_cart.dart';
import '../domain/usecases/update_cart_quantity.dart';
import '../presentation/blocs/product/product_bloc.dart';
import '../presentation/blocs/category/category_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Core
  getIt.registerSingleton<ApiClient>(ApiClient());

  // Data Sources
  getIt.registerSingleton<ProductRemoteDataSource>(ProductRemoteDataSourceImpl(dio: getIt<ApiClient>().dio));
  getIt.registerSingleton<CartLocalDataSource>(CartLocalDataSourceImpl(cartBox: Hive.box('cart')));

  // Repositories
  getIt.registerSingleton<ProductRepository>(ProductRepositoryImpl(remoteDataSource: getIt<ProductRemoteDataSource>()));
  getIt.registerSingleton<CartRepository>(CartRepositoryImpl(localDataSource: getIt<CartLocalDataSource>()));

  // Use Cases
  getIt.registerSingleton<GetProducts>(GetProducts(getIt<ProductRepository>()));
  getIt.registerSingleton<GetProductDetails>(GetProductDetails(getIt<ProductRepository>()));
  getIt.registerSingleton<GetCategories>(GetCategories(getIt<ProductRepository>()));
  getIt.registerSingleton<GetProductsByCategory>(GetProductsByCategory(getIt<ProductRepository>()));
  getIt.registerSingleton<AddToCartUseCase>(AddToCartUseCase(getIt<CartRepository>()));
  getIt.registerSingleton<RemoveFromCartUseCase>(RemoveFromCartUseCase(getIt<CartRepository>()));
  getIt.registerSingleton<UpdateCartQuantityUseCase>(UpdateCartQuantityUseCase(getIt<CartRepository>()));

  // BLoCs
  getIt.registerFactory<ProductBloc>(() => ProductBloc(getProducts: getIt<GetProducts>(), getProductDetails: getIt<GetProductDetails>()));
  getIt.registerFactory<CategoryBloc>(
    () => CategoryBloc(getCategories: getIt<GetCategories>(), getProductsByCategory: getIt<GetProductsByCategory>()),
  );
}
