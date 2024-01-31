import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Image image;
  final String name;

  const Category({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: image,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 247, 255),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 147, 147, 147)),
        )
      ],
    ));
  }
}
