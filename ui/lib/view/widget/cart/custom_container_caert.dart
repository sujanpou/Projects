import 'package:flutter/material.dart';
import 'package:ui/constant/colors.dart';

class CustomContainerCart extends StatelessWidget {
  const CustomContainerCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: AppColor.lightGrey2,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            child: const Text(
              "You have 2 items in the cart ",
              style: TextStyle(color: AppColor.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Total Price: Rs 3,20,000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('checkout'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      "check out",
                      style: TextStyle(
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      color: AppColor.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
