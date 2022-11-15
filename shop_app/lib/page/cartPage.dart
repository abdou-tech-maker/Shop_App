import 'package:flutter/material.dart';
import 'package:shop_app/model/cart_item.dart';
import 'package:shop_app/provider/shop_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cart',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Clear Cart',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          Expanded(
              child: Container(
            child: buildCardItems(context),
          )),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Total : ',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Text('\$80.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                fixedSize: Size(size.width, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: const Text(
                'Next ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
        ]),
      ),
    );
  }

  Widget buildCardItems(BuildContext context) {
    final provider = Provider.of<ShopProvider>(context);
    if (provider.items.isEmpty) {
      return const Center(
        child: Text('Card Is Empty',
            style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    } else {
      return ListView(
        children: provider.items.values.map(buildCardItem).toList(),
      );
    }
  }

  Widget buildCardItem(CartItem cartItem) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(cartItem.imageUrl),
      ),
      title: Row(
          //   mainAxisAlignment: MainAxisAlignment,
          children: [
            Text(
              ('${cartItem.quantity}x'),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              cartItem.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ]),
      trailing: Text(
        '\$${cartItem.price}',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
