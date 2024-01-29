import 'package:store/helper/api.dart';
import 'package:store/models/product.dart';

class Category {
  Future<List<Product>> get({required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<Product> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(Product.fromJson(data[i]));
    }
    return productsList;
  }
}
