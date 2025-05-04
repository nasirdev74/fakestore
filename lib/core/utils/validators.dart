class Validators {
  static bool isValidQuantity(int quantity) {
    return quantity > 0;
  }

  static bool isValidSort(String? sort) {
    return sort == null || sort == 'asc' || sort == 'desc';
  }

  static bool isValidLimit(int? limit) {
    return limit == null || limit > 0;
  }

  static String? validateCategory(String? category) {
    if (category == null || category.trim().isEmpty) {
      return 'Category cannot be empty';
    }
    return null;
  }
}