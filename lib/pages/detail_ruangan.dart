import 'package:flutter/material.dart';
import 'package:smart_control/core/page_layout.dart';
import 'package:smart_control/models/item_ruangan_model.dart';
import 'package:smart_control/widgets/item.dart';

class DetailRuangan extends StatelessWidget {
  final int idRuangan;
  final String namaRuangan;
  const DetailRuangan(
      {super.key, required this.idRuangan, required this.namaRuangan});

  @override
  Widget build(BuildContext context) {
    final ItemRuanganModel itemRuangan = listItemRuangan
        .where((element) => element.idRuangan == idRuangan)
        .first;
    return PageLayout(
        title: namaRuangan,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              crossAxisCount: 2,
              children: itemRuangan.item.map(
                (e) {
                  return Item(item: e);
                },
              ).toList()),
        ));
  }
}
