import 'package:widget/di/get_it.dart';
import 'package:widget/models/Product.dart';
import 'package:widget/network/http/http_service.dart';
import 'package:widget/port/product.dart';

class ProductRepository implements IProductRepository {
  final HttpService httpService = getIt.get<HttpService>();

  @override
  Future<List<Product>> getByCategory(String category) async {
    final response = await httpService.get('/products/category/$category');
    List<Product> products = [];
    for (dynamic res in response) {
      products.add(Product.fromJson(res));
    }
    return products;
  }

  @override
  Future<List<String>> getCategories() async {
    final response = await httpService.get('/products/categories');
    // List<String> categories = [];
    // for(dynamic res in response) {
    //   categories.add(res);
    // }
    // return categories;
    return (response as List<dynamic>).map((e) => e.toString()).toList();
  }
}
