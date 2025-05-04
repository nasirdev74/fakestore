import 'dart:io';

import 'di/injector.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'data/models/cart_item_model.dart';
import 'presentation/routes/app_routes.dart';

void main() async {
  final path = Directory.systemTemp.path;
  Hive.init(path);
  Hive.registerAdapter(CartItemModelAdapter());
  await Hive.openBox<CartItemModel>('cart');
  setupDependencies();
  runApp(FakeStoreApp());
}

class FakeStoreApp extends StatelessWidget {
  const FakeStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'ShopEase', theme: ThemeData(primarySwatch: Colors.blue), routerConfig: router);
  }
}
