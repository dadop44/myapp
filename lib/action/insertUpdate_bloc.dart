import 'dart:async';

import 'package:myapp/action/insertUpdate_event.dart';
import 'package:myapp/model/product.dart';
import 'package:myapp/repository/product_repository.dart';

class InsertUpdateBloc {
  ProductRepository productRepository;

  InsertUpdateBloc() {
    productRepository = ProductRepository();
  }

  void handleEvent(event) {
    if (event == InsertUpdateEvent.INSERT) {
    } else if (event == InsertUpdateEvent.UPDATE) {}
  }

  Future<int> addProduct(Product product) async {
    int result = await productRepository.insertProduct(product);
    return result;
  }

  Future<int> updateProduct(Product product) async {
    int result = await productRepository.updateProduct(product);
    return result;
  }
}
