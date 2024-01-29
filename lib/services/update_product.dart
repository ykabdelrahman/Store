import 'package:store/helper/api.dart';
import 'package:store/models/product.dart';

class UpdateProduct {
  Future<Product> update({
    required dynamic id,
    required String title,
    required dynamic price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<dynamic, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': '$price',
        'description': description,
        'image': image,
        'category': category,
      },
      token: null,
    );
    return Product.fromJson(data);
  }
}
