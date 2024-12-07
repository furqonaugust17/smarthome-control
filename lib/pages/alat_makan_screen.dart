import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AlatMakanScreen extends StatelessWidget {
  const AlatMakanScreen({super.key});

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
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFD9D9D9)),
                  child: Transform.translate(
                    offset: Offset(-5, -5),
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
                  "Makanan Kucing",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )),
        backgroundColor: const Color(0xFF718CCE),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF7AB2D3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
