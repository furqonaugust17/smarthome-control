import 'package:flutter/material.dart';
import 'package:smart_control/core/page_layout.dart';
import 'package:smart_control/widgets/list_jadwal.dart';
import 'package:smart_control/widgets/time_picker.dart';
import 'package:smart_control/widgets/video_streaming.dart';

class AlatMakanScreen extends StatelessWidget {
  const AlatMakanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
        title: "Makanan Kucing",
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
            child: Column(
              spacing: 18,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFF7AB2D3),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Ini Video Kucing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 18),
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFF7AB2D3),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Text(
                            "Jadwal",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: SizedBox(height: 250, child: ListJadwal()),
                          ),
                          TimePicker()
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: TextButton(
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              const WidgetStatePropertyAll(Color(0xFF9ED86B))),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green.shade400,
                            content: const Text('makan berhasil diberikan')));
                      },
                      child: const Text(
                        "Beri Makan",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
