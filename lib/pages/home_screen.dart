import 'package:flutter/material.dart';
import 'package:smart_control/widgets/alat_makan.dart';
import 'package:smart_control/widgets/cuaca_suhu.dart';
import 'package:smart_control/widgets/rectangle_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CuacaSuhu(),
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            AlatMakan(),
            RectangleItem(
              title: 'Lampu',
              image: 'assets/image/lamp.png',
            )
          ],
        )
      ],
    );
  }
}
