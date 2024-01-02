class AyatModel {
  final int surah;
  final int nomor;
  final String ar;
  final String idn;

  AyatModel(
      {required this.surah,
      required this.nomor,
      required this.ar,
      required this.idn});

  factory AyatModel.fromJson(Map<String, dynamic> json) {
    return AyatModel(
      surah: json['surah'],
      nomor: json['nomor'],
      ar: json['ar'],
      idn: json['idn'],
    );
  }
}
