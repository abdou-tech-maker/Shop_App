import 'package:meta/meta.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final String imageUrl;
  final double price;

  const CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.imageUrl,
    required this.price,
  });

  CartItem copy({
    required String id,
    required String title,
    required int quantity,
    required String imageUrl,
    required double price,
  }) =>
      CartItem(
          id: id ?? this.id,
          title: title ?? this.title,
          quantity: quantity ?? this.quantity,
          imageUrl: imageUrl ?? this.imageUrl,
          price: price ?? this.price);
}
