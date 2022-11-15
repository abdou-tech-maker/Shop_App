// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

import 'package:shop_app/model/cart_item.dart';

class ShopProvider with ChangeNotifier {
  Map<String, CartItem> _items;
  Map<String, CartItem> get items => _items;

  ShopProvider()
      : _items = {
          '1': const CartItem(
              id: '1',
              title: 'Ananas',
              quantity: 2,
              imageUrl: 'assets/imgs/ananas.jpg',
              price: 30.0),
          '2': const CartItem(
              id: '1',
              title: 'milk',
              quantity: 2,
              imageUrl: 'assets/imgs/milk.jpg',
              price: 30.0),
          '3': const CartItem(
              id: '1',
              title: 'nutella',
              quantity: 2,
              imageUrl: 'assets/imgs/nutella.jpg',
              price: 30.0),
          '4': const CartItem(
              id: '1',
              title: 'pepsi',
              quantity: 2,
              imageUrl: 'assets/imgs/pepsi.jpg',
              price: 30.0),
          '5': const CartItem(
              id: '1',
              title: 'tuna',
              quantity: 2,
              imageUrl: 'assets/imgs/tuna.jpg',
              price: 30.0),
          '6': const CartItem(
              id: '1',
              title: 'spaghetti',
              quantity: 2,
              imageUrl: 'assets/imgs/spaghetti.png',
              price: 30.0),
          '7': const CartItem(
              id: '1',
              title: 'tuna2',
              quantity: 2,
              imageUrl: 'assets/imgs/tuna2.jpg',
              price: 30.0),
        };

  set items(Map<String, CartItem> value) {
    _items = value;
  }
}
