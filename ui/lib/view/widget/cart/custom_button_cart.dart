import 'package:flutter/material.dart';
import 'package:ui/constant/colors.dart';

class CustomButtonCart extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonCart({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 40, left: 30, right: 30),
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.lightGrey,
          ),
        ),
      ),
    );
  }
}
