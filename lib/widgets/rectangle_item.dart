import 'package:flutter/material.dart';
import 'package:smart_control/pages/item_screen.dart';

class RectangleItem extends StatelessWidget {
  final String title;
  final String image;
  final List items;
  const RectangleItem(
      {super.key,
      required this.title,
      required this.image,
      required this.items});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemScreen(
                      items: items,
                    )));
      },
      child: Expanded(
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
          )),
    );
  }
}
