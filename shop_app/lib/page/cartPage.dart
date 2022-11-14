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
    /*return const Center(
      child: Text('Card Is Empty',
          style: TextStyle(color: Colors.white, fontSize: 18)),
    );*/
    return buildCardItem(context);
  }

  Widget buildCardItem(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/imgs/ananas.jpg'),
      ),
      title: Row(
          //   mainAxisAlignment: MainAxisAlignment,
          children: const [
            Text(
              ('1x'),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Ananas',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ]),
      trailing: const Text(
        '\$50.0',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
