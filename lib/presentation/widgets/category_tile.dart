import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/category/category_bloc.dart';
import '../blocs/category/category_event.dart';

class CategoryTile extends StatelessWidget {
  final String category;

  const CategoryTile({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category),
      onTap: () {
        context.read<CategoryBloc>().add(CategoryEvent.fetchCategoryProducts(category));
      },
    );
  }
}