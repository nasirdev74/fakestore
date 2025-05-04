import 'app/app.dart';
import 'di/injector.dart';
import 'di/bloc_observer.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'data/models/cart_item/cart_item_model.dart';
import 'package:app/data/models/product/product_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(CartItemModelAdapter());
  Hive.registerAdapter(ProductModelAdapter());
  Hive.registerAdapter(RatingModelAdapter());
  await Hive.openBox<CartItemModel>(CartItemModel.hiveBox);
  if (kDebugMode) Bloc.observer = DebugBlocObserver();
  configureDependencies();
  runApp(FakeStoreApp());
}
