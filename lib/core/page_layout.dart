import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PageLayout extends StatelessWidget {
  final String title;
  final Widget child;
  const PageLayout({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: Container(
                padding: const EdgeInsets.all(18),
                child: AppBar(
                  leading: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFD9D9D9)),
                    child: Transform.translate(
                      offset: const Offset(-5, -5),
                      child: IconButton(
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(MdiIcons.chevronLeft)),
                    ),
                  ),
                  backgroundColor: const Color(0xFF4A628A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          backgroundColor: const Color(0xFF718CCE),
          body: child),
    );
  }
}
