import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_control/models/jadwal_model.dart';
import 'package:smart_control/core/extension.dart';
import 'package:smart_control/provider/list_jadwal_model.dart';

class ListJadwal extends StatelessWidget {
  const ListJadwal({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Listjadwalmodel>(
      builder: (context, model, child) {
        final List<JadwalModel> jadwals = model.jadwals;
        return ListView(
          children: List.generate(
            jadwals.length,
            (index) {
              return Card(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: Text(
                    '${index + 1}. ',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  title: Text(
                    jadwals[index].waktu.to24hours(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
