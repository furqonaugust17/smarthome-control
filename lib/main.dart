import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_control/pages/main_page.dart';
import 'package:smart_control/provider/list_jadwal_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Listjadwalmodel(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
