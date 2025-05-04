import 'package:app/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/cart_bloc/cart_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/core/constants/app_strings.dart';
import 'package:app/presentation/routes/app_routes.dart';

class FakeStoreApp extends StatelessWidget {
  FakeStoreApp({super.key});

  final router = getIt<AppRouter>().router();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<CartBloc>(create: (_) => getIt<CartBloc>())],
      child: MaterialApp.router(
        routerConfig: router,
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
