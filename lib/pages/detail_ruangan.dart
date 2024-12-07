import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smart_control/models/item_ruangan_model.dart';
import 'package:smart_control/widgets/popup_item.dart';

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
                  namaRuangan,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )),
        backgroundColor: const Color(0xFF718CCE),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              crossAxisCount: 2,
              children: itemRuangan.item.map(
                (e) {
                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return PopupItem(item: e);
                        },
                      );
                    },
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          color: const Color(0xFF7AB2D3),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e['item'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 116,
                            width: 116,
                            child: Image.asset('assets/image/${e['image']}'),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ).toList()),
        ),
      ),
    );
  }
}
