import 'package:store/helper/api.dart';
import 'package:store/models/product.dart';

class AddProduct {
  Future<Product> add({
    required String title,
    required dynamic price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<dynamic, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
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
