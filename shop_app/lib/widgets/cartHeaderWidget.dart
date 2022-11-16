import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/cart_item.dart';
import 'package:shop_app/provider/shop_provider.dart';

class CartHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShopProvider>(context);
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        children: [
          const Text(
            'Cart',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //  provider.items.values.map(buildCartItem).toList(),
                const SizedBox(
                  width: 12,
                ),
                if (provider.items.isNotEmpty) buildItemCount(context)
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget buildItemCount(BuildContext context) {
    final provider = Provider.of<ShopProvider>(context);

    return CircleAvatar(
      radius: 20,
      backgroundColor: Theme.of(context).primaryColor,
      child: Text(
        provider.itemCount.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildCartItem(CartItem cartItem) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(cartItem.imageUrl),
        ),
      );
}
