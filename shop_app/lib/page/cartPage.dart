import 'package:flutter/material.dart';

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
            color: Colors.green,
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
              Text('\$80',
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
                fixedSize: Size(size.width * 0.6, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: const Text(
                'Sign Up ',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              )),
        ]),
      ),
    );
  }

  Widget buildCardItems(BuildContext context) {
    return const Center(
      child: Text('Card Is Empty',
          style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}
