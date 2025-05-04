import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:app/di/injector.config.dart';
import 'package:app/core/network/api_client.dart';
import 'package:app/data/models/cart_item/cart_item_model.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => getIt<ApiClient>().dio;

  @lazySingleton
  Box<CartItemModel> get cartBox => Hive.box<CartItemModel>(CartItemModel.hiveBox);
}
