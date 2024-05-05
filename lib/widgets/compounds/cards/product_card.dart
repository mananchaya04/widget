import 'package:flutter/material.dart';
import 'package:widget/entities/product.dart';
import 'package:widget/widgets/elements/texts/price_text.dart';
import 'package:widget/widgets/elements/texts/small_text.dart';

class ProductCard extends StatelessWidget {
  final ProductToDisplay product;

  const ProductCard({super.key, required this.product});

  final double width = 200;
  final double height = 240;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(children: [
        Image.network(product.imageUrl, width: width, height: height, fit: BoxFit.cover,),
        Column(
          children: [
            const Spacer(),
            Container(
              color: const Color(0x88000000),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(title: product.name, color: Colors.white,),
                    PriceText(price: '${product.price}\$'),
                  ],
                ),
              ),
            )
          ],
        )
      ],),
    );
  }

}