import 'package:flutter/material.dart';
import 'package:smart_control/models/item_ruangan_model.dart';
import 'package:smart_control/models/ruangan_model.dart';
import 'package:smart_control/widgets/alat_makan.dart';
import 'package:smart_control/widgets/cuaca_suhu.dart';
import 'package:smart_control/widgets/rectangle_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CuacaSuhu(),
        const SizedBox(
          height: 18,
        ),
        Row(
          children: [
            const AlatMakan(),
            RectangleItem(
              title: 'Lampu',
              image: 'assets/image/lamp.png',
              items: searchItem('lampu'),
            )
          ],
        )
      ],
    );
  }

  List searchItem(String query) {
    List<ItemRuanganModel> listItem = listItemRuangan;
    List<RuanganModel> ruangans = listRuangan;
    List<Map<String, dynamic>> result = [];
    for (var item in listItem) {
      String ruangan =
          ruangans.where((ruangan) => ruangan.id == item.idRuangan).first.title;
      for (var element in item.item) {
        if (element['item']
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase())) {
          result.add({
            'ruangan': ruangan,
            'item': '${element['item']}',
            'image': element['image'],
            'status': element['status']
          });
        }
      }
    }

    return result;
  }
}
