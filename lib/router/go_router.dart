import 'dart:js';

import 'package:go_router/go_router.dart';
import 'package:widget/entities/product.dart';
import 'package:widget/mocks/products.dart';
import 'package:widget/screens/home_screen.dart';
import 'package:widget/screens/product_detail_screen.dart';
import 'package:widget/screens/profile.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
            path: 'detail',
            builder: (context, state) {
              final product = state.extra as ProductToDisplay;
              return ProductDetailScreen(product : product,);
            }),
            GoRoute(
              path: 'profile',
              builder: (context,state){
                return ProfilePage();
              }),
      ]),
]);
