import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:app/presentation/pages/cart_page.dart';
import 'package:app/presentation/pages/bottom_navigation_bar.dart';
import 'package:app/presentation/pages/products/products_page.dart';
import 'package:app/presentation/pages/categories/categories_page.dart';
import 'package:app/presentation/pages/category_products/category_products.dart';
import 'package:app/presentation/pages/product_details/product_details_page.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator = GlobalKey(debugLabel: 'shell');

@singleton
@injectable
class AppRouter {
  AppRouter();

  GoRouter router() {
    return GoRouter(
      initialLocation: '/',
      navigatorKey: _rootNavigator,
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigator,
          builder: (context, state, child) {
            return Scaffold(
              body: child,
              backgroundColor: Colors.white,
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: CustomBottomNavigationBar(
                currentPath: state.uri.path,
                onTap: (index) {
                  final routes = ['/', '/categories', '/cart'];
                  context.go(routes[index]);
                },
              ),
            );
          },
          routes: [
            GoRoute(
              path: '/',
              name: ProductsPage.route,
              parentNavigatorKey: _shellNavigator,
              builder: (ctx, state) => const ProductsPage(),
            ),
            GoRoute(
              path: '/categories',
              name: CategoriesPage.route,
              parentNavigatorKey: _shellNavigator,
              builder: (ctx, state) => const CategoriesPage(),
            ),
            GoRoute(
              path: '/cart',
              name: CartPage.route,
              parentNavigatorKey: _shellNavigator,
              builder: (ctx, state) => const CartPage(),
            ),
          ],
        ),
        GoRoute(
          path: '/product/:id',
          name: ProductDetailsPage.route,
          builder: (ctx, state) {
            final id = state.pathParameters["id"];
            return ProductDetailsPage(productId: int.tryParse("$id") ?? 0);
          },
        ),
        GoRoute(
          path: '/category/:name',
          name: CategoryProductsPage.route,
          builder: (ctx, state) {
            final name = state.pathParameters["name"];
            return CategoryProductsPage(categoryName: "$name");
          },
        ),
      ],
    );
  }
}
