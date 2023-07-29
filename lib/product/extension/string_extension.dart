extension ColorStringExtension on String? {
  int get colorValue {
    var newColor = this?.replaceFirst('#', '0xff') ?? '';
    return int.parse(newColor);
  }
}
