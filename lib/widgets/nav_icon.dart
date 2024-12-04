import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final bool selected;
  final IconData icon;
  const NavIcon({super.key, required this.selected, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: selected ? Colors.white : const Color(0xFF718CCE),
          borderRadius: BorderRadius.circular(20)),
      width: 50,
      height: 50,
      child: Icon(
        icon,
        size: 35,
      ),
    );
  }
}
