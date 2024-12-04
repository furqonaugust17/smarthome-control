import 'package:flutter/material.dart';
import 'package:smart_control/models/ruangan_model.dart';

class RuanganScreen extends StatelessWidget {
  const RuanganScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<RuanganModel> ruangan = listRuangan;

    return Column(
      children: List.generate(
        ruangan.length,
        (index) {
          return InkWell(
            onTap: () {},
            child: SizedBox(
              height: 97,
              child: Card(
                color: const Color(0xFF7AB2D3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: SizedBox(
                        width: 50,
                        child: Image.asset(
                          'assets/image/${ruangan[index].icon}',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      title: Text(
                        ruangan[index].title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
