class RuanganModel {
  final int id;
  final String title;
  final String icon;

  RuanganModel({required this.id, required this.title, required this.icon});
}

List<RuanganModel> listRuangan = [
  RuanganModel(id: 1, title: "Dapur", icon: 'dapur.png'),
  RuanganModel(id: 2, title: "Ruangan 1", icon: 'pintu.png'),
  RuanganModel(id: 3, title: "Ruangan 2", icon: 'pintu.png'),
  RuanganModel(id: 4, title: "Ruangan Keluarga", icon: 'sofa.png'),
];
