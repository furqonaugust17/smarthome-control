import 'package:flutter/material.dart';
import 'package:smart_control/core/page_layout.dart';
import 'package:smart_control/widgets/item.dart';

class ItemScreen extends StatelessWidget {
  final List items;
  const ItemScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
        title: "Lampu",
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              crossAxisCount: 2,
              children: items.map(
                (e) {
                  return Item(item: e);
                },
              ).toList()),
        ));
  }
}
