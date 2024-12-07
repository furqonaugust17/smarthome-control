import 'package:flutter/material.dart';
import 'package:smart_control/pages/alat_makan_screen.dart';

class AlatMakan extends StatelessWidget {
  const AlatMakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AlatMakanScreen(),
              )),
          child: Container(
            margin: const EdgeInsets.only(right: 5),
            height: 139,
            decoration: BoxDecoration(
                color: const Color(0xFF7AB2D3),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Column(
                      children: [
                        const Text(
                          'Alat Makan Kucing Otomatis',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Transform.scale(
                          scale: 1.8,
                          child: Transform.translate(
                            offset: const Offset(7, 7),
                            child: Image.asset(
                              'assets/image/cat.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Transform.translate(
                      offset: const Offset(5, 10),
                      child: Image.asset(
                        'assets/image/pet-food.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
