class ItemRuanganModel {
  final int idRuangan;
  final List<Map<String, dynamic>> item;

  ItemRuanganModel({required this.idRuangan, required this.item});
}

List<ItemRuanganModel> listItemRuangan = [
  ItemRuanganModel(idRuangan: 1, item: [
    {'item': 'Lampu 1', 'status': true, 'image': 'lamp.png'},
    {'item': 'Lampu 2', 'status': true, 'image': 'lamp.png'},
    {'item': 'Lampu 3', 'status': false, 'image': 'lamp.png'},
    {'item': 'Dispenser', 'image': 'dispenser.png'}
  ]),
  ItemRuanganModel(idRuangan: 2, item: [
    {'item': 'Lampu 1', 'status': true, 'image': 'lamp.png'},
    {'item': 'Lampu 2', 'status': true, 'image': 'lamp.png'},
    {'item': 'Lampu 3', 'status': false, 'image': 'lamp.png'},
    {'item': 'AC', 'status': true, 'image': 'ac.png'}
  ]),
  ItemRuanganModel(idRuangan: 3, item: [
    {'item': 'Lampu 1', 'status': false, 'image': 'lamp.png'},
    {'item': 'Lampu 2', 'status': true, 'image': 'lamp.png'},
    {'item': 'Lampu 3', 'status': false, 'image': 'lamp.png'},
    {'item': 'AC', 'status': true, 'image': 'ac.png'}
  ]),
  ItemRuanganModel(idRuangan: 4, item: [
    {'item': 'Lampu 1', 'status': false, 'image': 'lamp.png'},
    {'item': 'Lampu 2', 'status': true, 'image': 'lamp.png'},
    {'item': 'Lampu 3', 'status': true, 'image': 'lamp.png'},
    {'item': 'TV', 'status': true, 'image': 'tv.png'},
    {'item': 'AC', 'status': true, 'image': 'ac.png'}
  ]),
];
