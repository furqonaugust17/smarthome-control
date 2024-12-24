import 'package:flutter/material.dart';
import 'package:smart_control/models/jadwal_model.dart';

class Listjadwalmodel extends ChangeNotifier {
  final List<JadwalModel> listJadwal = [
    JadwalModel(waktu: const TimeOfDay(hour: 6, minute: 30)),
    JadwalModel(waktu: const TimeOfDay(hour: 12, minute: 30)),
    JadwalModel(waktu: const TimeOfDay(hour: 18, minute: 00)),
    JadwalModel(waktu: const TimeOfDay(hour: 23, minute: 00)),
  ];

  List<JadwalModel> get jadwals => listJadwal;

  void addJadwal(JadwalModel jadwal) {
    listJadwal.add(jadwal);
    notifyListeners();
  }
}
