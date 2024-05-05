// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget/main.dart';
import 'package:widget/mocks/mock_http_service.dart';
import 'package:widget/mocks/products.dart';
import 'package:widget/port/product.dart';
import 'package:widget/repositories/product_repository.dart';
import 'package:widget/services/product_service.dart';
import 'package:widget/widgets/compounds/sections/catalog.dart';

void main() {
  test('Get product by electronics category returns electronics products',() async {
    final mockHttpService = MockHttpService('mock');
    mockHttpService.returnData = [{
      "id": 9,
      "title": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
      "price": 64,
      "description": "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      "rating": {
        "rate": 3.3,
        "count": 203
      }
    }];

    final productRepository = ProductRepository(mockHttpService);
    final productService = ProductService(productRepository);
    final products = await productService.getByCategory('electronics');

    expect(products, isNotEmpty);
    expect(products[0].category, 'electronics');
  });

  test('Get all catagories get catagories' , () async {
    final mockHttpService = MockHttpService('mock');
    mockHttpService.returnData = [
      "electronics",
      "jewelery",
      "men's clothing",
      "women's clothing"
    ];
    final productRepository = ProductRepository(mockHttpService);
    final productService = ProductService(productRepository);
    final catagories = await productService.getCategories();
  });
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}