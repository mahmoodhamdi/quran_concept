class AyaModel {
  final int id;
  final String verseKey;
  final String textUthmani;

  AyaModel({
    required this.id,
    required this.verseKey,
    required this.textUthmani,
  });

  factory AyaModel.fromJson(Map<String, dynamic> json) {
    return AyaModel(
      id: json['id'],
      verseKey: json['verse_key'],
      textUthmani: json['text_uthmani'],
    );
  }
}
