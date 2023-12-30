class Sura {
  int id;
  RevelationPlace revelationPlace;
  bool bismillahPre;
  String nameSimple;
  String nameArabic;
  int versesCount;
  List<int> pages;

  Sura({
    required this.id,
    required this.revelationPlace,
    required this.bismillahPre,
    required this.nameSimple,
    required this.nameArabic,
    required this.versesCount,
    required this.pages,
  });
}

enum RevelationPlace { MADINAH, MAKKAH }
