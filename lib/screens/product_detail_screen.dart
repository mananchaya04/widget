import 'package:flutter/material.dart';
import 'package:widget/entities/product.dart';
import 'package:widget/widgets/elements/texts/des_text.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductToDisplay product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(widget.product.name),
            // Add image widget
            Image.network(
              widget.product.imageUrl,
              height: 200,
              width: MediaQuery.of(context).size.width,

            ),
            Text(widget.product.description.toString(),
            style: TextStyle(fontSize: 10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price: ${widget.product.price}\$',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
