List<String> tabs = [
  "Sura",
  "Para",
  "Hizb",
  "Page",
];
double changePositionedOfLine(int current) {
  switch (current) {
    case 0:
      return 0;
    case 1:
      return 85;
    case 2:
      return 170;
    case 3:
      return 263;
    default:
      return 0;
  }
}
double changeContainerWidth(int current) {
  switch (current) {
    case 0:
      return 50;
    case 1:
      return 50;
    case 2:
      return 50;
    case 3:
      return 50;
    default:
      return 0;
  }
}
