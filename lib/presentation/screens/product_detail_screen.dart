import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/product.dart';
import '../blocs/product/product_bloc.dart';
import '../blocs/product/product_event.dart';
import '../blocs/product/product_state.dart';
import '../../di/injector.dart';

class ProductDetailScreen extends StatelessWidget {
  final int productId;

  const ProductDetailScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductBloc>()..add(ProductEvent.fetchProductDetails(productId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Product Details')),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is Initial) {
              return const SizedBox();
            } else if (state is Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedProducts) {
              return const SizedBox();
            } else if (state is LoadedProductDetails) {
              return _buildProductDetails(context, state.product);
            } else if (state is Error) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  Widget _buildProductDetails(BuildContext context, Product product) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.image, height: 200, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Text(product.title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text('\$${product.price}', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Text('Rating: ${product.rating.rate} (${product.rating.count} reviews)'),
          const SizedBox(height: 16),
          Text(product.description),
        ],
      ),
    );
  }
}