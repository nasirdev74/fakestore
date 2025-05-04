// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/app/cart_bloc/cart_bloc.dart' as _i543;
import 'package:app/core/network/api_client.dart' as _i859;
import 'package:app/data/datasources/local/cart_local_datasource.dart' as _i288;
import 'package:app/data/datasources/remote/product_remote_datasource.dart'
    as _i158;
import 'package:app/data/models/cart_item/cart_item_model.dart' as _i439;
import 'package:app/data/repositories/cart_repository_impl.dart' as _i458;
import 'package:app/data/repositories/product_repository_impl.dart' as _i1066;
import 'package:app/di/injector.dart' as _i956;
import 'package:app/domain/repositories/cart_repository.dart' as _i101;
import 'package:app/domain/repositories/product_repository.dart' as _i8;
import 'package:app/domain/usecases/cart.dart' as _i46;
import 'package:app/domain/usecases/category.dart' as _i794;
import 'package:app/domain/usecases/product.dart' as _i979;
import 'package:app/presentation/pages/categories/cubit/categories_cubit.dart'
    as _i27;
import 'package:app/presentation/pages/category_products/cubit/category_products_cubit.dart'
    as _i346;
import 'package:app/presentation/pages/product_details/cubit/product_details_cubit.dart'
    as _i256;
import 'package:app/presentation/pages/products/cubit/products_cubit.dart'
    as _i973;
import 'package:app/presentation/routes/app_routes.dart' as _i147;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i859.ApiClient>(() => _i859.ApiClient());
    gh.singleton<_i147.AppRouter>(() => _i147.AppRouter());
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i979.Box<_i439.CartItemModel>>(() => appModule.cartBox);
    gh.factory<_i158.ProductRemoteDataSource>(
        () => _i158.ProductRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i288.CartLocalDataSource>(() => _i288.CartLocalDataSourceImpl(
        cartBox: gh<_i979.Box<_i439.CartItemModel>>()));
    gh.factory<_i101.CartRepository>(() => _i458.CartRepositoryImpl(
        localDataSource: gh<_i288.CartLocalDataSource>()));
    gh.factory<_i8.ProductRepository>(() => _i1066.ProductRepositoryImpl(
        remoteDataSource: gh<_i158.ProductRemoteDataSource>()));
    gh.factory<_i979.ProductUseCase>(
        () => _i979.ProductUseCase(gh<_i8.ProductRepository>()));
    gh.factory<_i794.CategoryUseCase>(
        () => _i794.CategoryUseCase(gh<_i8.ProductRepository>()));
    gh.factory<_i27.CategoriesCubit>(() =>
        _i27.CategoriesCubit(categoryUseCase: gh<_i794.CategoryUseCase>()));
    gh.factory<_i46.CartUseCase>(
        () => _i46.CartUseCase(gh<_i101.CartRepository>()));
    gh.factory<_i973.ProductsCubit>(
        () => _i973.ProductsCubit(productUseCase: gh<_i979.ProductUseCase>()));
    gh.factory<_i346.CategoryProductsCubit>(() => _i346.CategoryProductsCubit(
        productUseCase: gh<_i979.ProductUseCase>()));
    gh.factory<_i256.ProductDetailsCubit>(() =>
        _i256.ProductDetailsCubit(productUseCase: gh<_i979.ProductUseCase>()));
    gh.singleton<_i543.CartBloc>(
        () => _i543.CartBloc(cartUseCase: gh<_i46.CartUseCase>()));
    return this;
  }
}

class _$AppModule extends _i956.AppModule {}
