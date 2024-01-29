import 'package:store/helper/api.dart';

class AllCategories {
  Future<List<dynamic>> get() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
