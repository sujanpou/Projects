import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(209, 8, 28, 209),
          Color.fromARGB(190, 23, 38, 171)        
        ),      
    ),
  ),
  );
}
