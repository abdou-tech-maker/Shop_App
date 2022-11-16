import 'package:meta/meta.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final String imageUrl;
  final double price;
  final String content;

  const CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.imageUrl,
    required this.price,
    required this.content,
  });

  CartItem copy({
    required String id,
    required String title,
    required int quantity,
    required String imageUrl,
    required double price,
  }) =>
      CartItem(
          id: id,
          title: title,
          quantity: quantity,
          imageUrl: imageUrl,
          price: price,
          content: content);
}
