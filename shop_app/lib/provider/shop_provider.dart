// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

import 'package:shop_app/model/cart_item.dart';

class ShopProvider with ChangeNotifier {
  Map<String, CartItem> _items;
  Map<String, CartItem> get items => _items;

  ShopProvider() : _items = {};

  set items(Map<String, CartItem> value) {
    _items = value;
  }

  int get itemCount => _items.length;
}
