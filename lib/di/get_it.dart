import 'package:get_it/get_it.dart';
import 'package:widget/network/http/dio_service.dart';
import 'package:widget/network/http/http_service.dart';
import 'package:widget/port/product.dart';
import 'package:widget/repositories/product_repository.dart';
import 'package:widget/services/product_service.dart';

final getIt = GetIt.instance;

void registerServices() {
  getIt.registerSingleton<HttpService>(DioService('https://fakestoreapi.com'));
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());
}
