import 'package:app/core/utils/status.dart';
import 'package:injectable/injectable.dart';
import 'package:app/app/safe_emit_cubit.dart';
import 'package:app/domain/usecases/category.dart';
import 'package:app/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.dart';

part 'categories_cubit.freezed.dart';

@injectable
class CategoriesCubit extends SafeEmitCubit<CategoriesState> {
  final CategoryUseCase categoryUseCase;

  CategoriesCubit({required this.categoryUseCase}) : super(const CategoriesState()) {
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final categories = await categoryUseCase.getCategories();
      emit(state.copyWith(status: Status.success, categories: categories));
    } catch (e) {
      emit(state.copyWith(status: Status.failed, error: e.toString()));
    }
  }
}
