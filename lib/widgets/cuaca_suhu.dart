import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CuacaSuhu extends StatelessWidget {
  const CuacaSuhu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xFF608BC1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    MdiIcons.weatherPartlyCloudy,
                    color: Colors.white,
                    size: 60,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payakumbuh, Sumatra Barat',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Cerah Berawan',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              const Expanded(
                  child: Text(
                textAlign: TextAlign.center,
                '25℃',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 2, color: Color(0xFF6088B9)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          MdiIcons.thermometer,
                          color: Colors.white,
                        ),
                        const Text(
                          '25℃',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Suhu Ruangan',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          MdiIcons.waterOutline,
                          color: Colors.white,
                        ),
                        const Text(
                          '60%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Kelembaban',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
