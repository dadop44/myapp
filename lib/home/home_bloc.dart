import 'dart:async';

class HomeBloc {
  ProductRepository productRepository;

  final _listController = StreamController<List<Product>>();
  StreamSink<List<Product>> get _inList => _listController.sink;
  Stream<List<Product>> get list => _listController.stream;

  HomeBloc() {
    productRepository = ProductRepository();
  }

  getAllProduct() async {
    List<Product> result = await productRepository.getAllProduct();
    _inList.add(result);
  }

  Future<int> deleteProduct(int id) async {
    int result = await productRepository.deleteProduct(id);
    return result;
  }

  deleteAll() async {
    int result = await productRepository.deleteAll();
    return result;
  }
}
