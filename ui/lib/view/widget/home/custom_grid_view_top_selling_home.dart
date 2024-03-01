import 'package:flutter/material.dart';
import 'package:ui/constant/colors.dart';

class CustomGridViewTopSellingHome extends StatelessWidget {
  const CustomGridViewTopSellingHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List toopSelling = [
      {
        "name": "Iphone 14 Pro",
        "price": "1,90,000",
        "image": "assets/images/iphone.png"
      },
      {
        "name": "MacBook Pro M2",
        "price": "2,00,000",
        "image": "assets/images/macbook.png"
      },
    ];
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: toopSelling.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('itemsDetails');
          },
          child: Card(
            color: AppColor.lightGrey3,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  '${toopSelling[index]['name']}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 25,
                  ),
                  child: Image.asset(
                    '${toopSelling[index]['image']}',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/add_cart.png",
                      height: 25,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: AppColor.lightGrey2,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Rs ${toopSelling[index]['price']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 23, 6),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
