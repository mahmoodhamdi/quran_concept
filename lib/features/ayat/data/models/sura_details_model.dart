class SurahDetailsModel {
  final int nomor;
  final List<AyatModel> ayat;

  SurahDetailsModel({
    required this.nomor,
    required this.ayat,
  });

  factory SurahDetailsModel.fromJson(Map<String, dynamic> json) {
    return SurahDetailsModel(
      nomor: json['nomor'],
      ayat: (json['ayat'] as List)
          .map((ayatJson) => AyatModel.fromJson(ayatJson))
          .toList(),
    );
  }
}

class AyatModel {
  final int surah;
  final int nomor;
  final String ar;

  AyatModel({
    required this.surah,
    required this.nomor,
    required this.ar,
  });

  factory AyatModel.fromJson(Map<String, dynamic> json) {
    return AyatModel(
      surah: json['surah'],
      nomor: json['nomor'],
      ar: json['ar'],
    );
  }
}
