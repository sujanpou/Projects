import 'package:flutter/material.dart';
import 'package:ui/constant/colors.dart';

class CustomGridItems extends StatelessWidget {
  const CustomGridItems({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        "name": "Huawei MateBook X Pro",
        "price": "97,099",
        "image": "assets/images/matebook.png"
      },
      {
        "name": "MacBook Pro M2",
        "price": "2,00,000",
        "image": "assets/images/macbook.png"
      },
      {
        "name": "Asus Vivobook",
        "price": "80,000",
        "image": "assets/images/vivobook.png"
      },
      {
        "name": "Lenovo IdeaPad Slim",
        "price": "1,00,000",
        "image": "assets/images/lenovo.png"
      },
      {
        "name": "Dell Latitude",
        "price": "32,000",
        "image": "assets/images/dell.png"
      },
      {
        "name": "ROG Zephyrus",
        "price": "1,20,000",
        "image": "assets/images/rog.png"
      },
    ];
    return GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("itemsDetails");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      '${items[index]['image']}',
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      '${items[index]['name']}',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColor.darkBlue),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Rs ${items[index]['price']}",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
