import 'package:flutter/material.dart';
import 'package:shop_app/page/cartPage.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/shop_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Shop UI';
  final state = ShopProvider();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => state,
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.deepOrange, primaryColorDark: Colors.white),
        home: const CartPage(),
      ),
    );
  }
}
