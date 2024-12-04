import 'package:flutter/material.dart';

class RectangleItem extends StatelessWidget {
  final String title;
  final String image;
  const RectangleItem({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.only(left: 5),
          height: 139,
          decoration: BoxDecoration(
              color: const Color(0xFF7AB2D3),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Expanded(child: Image.asset(image))
            ],
          ),
        ));
  }
}
