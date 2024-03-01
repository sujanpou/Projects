import 'package:flutter/material.dart';
import 'package:ui/constant/colors.dart';
import 'package:ui/view/widget/cart/custom_container_caert.dart';

import '../widget/cart/custom_card_cart.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "name": "Iphone 15",
        "price": "200,000",
        "count": "1",
        "image": "assets/images/iphone.png"
      },
      {
        "name": "MacBook Pro",
        "price": "120,000",
        "count": "1",
        "image": "assets/images/macbook.png"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightGrey,
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Text(
          "Cart",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const CustomContainerCart(),
            const SizedBox(height: 15),
            ...List.generate(
              data.length,
              (index) => CustomCardCart(
                name: "${data[index]['name']}",
                price: "${data[index]['price']}",
                count: "${data[index]['count']}",
                imageName: "${data[index]['image']}",
                onAdd: () {},
                onRemove: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
