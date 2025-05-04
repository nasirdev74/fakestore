abstract class CartRemoteDataSource {
  // Placeholder for future FakeStoreAPI /carts endpoint usage
  Future<void> getCarts();
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  @override
  Future<void> getCarts() async {
    // Not implemented; reserved for future use
    throw UnimplementedError('Cart remote data source not implemented');
  }
}