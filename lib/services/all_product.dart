import 'package:store/helper/api.dart';
import 'package:store/models/product.dart';

class AllProduct {
  Future<List<Product>> get() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<Product> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(Product.fromJson(data[i]));
    }
    return productsList;
  }
}
