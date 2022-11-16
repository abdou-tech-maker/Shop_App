import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/model/cart_item.dart';
import 'package:shop_app/page/cartPage.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/cartHeaderWidget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f5ee),
      appBar: AppBar(
        title: const Text(
          MyApp.title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: (() {}),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
                color: Colors.black,
              ))
        ],
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        parallaxOffset: 1,
        minHeight: 70,
        body: Container(
          margin: const EdgeInsets.only(bottom: 150),
          child: Stack(
            children: [
              buildProducts(),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        panelBuilder: ((_) => const CartPage()),
        collapsed: CartHeaderWidget(),
      ),
    );
  }

  Widget buildProducts() {
    const double spacing = 12;
    return GridView(
      padding: const EdgeInsets.all(spacing),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
        childAspectRatio: 3 / 4,
      ),
      children: products
          .map((product) => GestureDetector(
                onTap: (() {}),
                child: buildProduct(product),
              ))
          .toList(),
    );
  }

  Widget buildProduct(CartItem product) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(product.imageUrl),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$${product.price}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.content,
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.grey[700]),
              )
            ],
          )),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double radius = 50;
    final path = Path()
      ..arcToPoint(Offset(radius, size.height),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(size.width - radius, size.height)
      ..arcToPoint(Offset(size.width, 0),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
