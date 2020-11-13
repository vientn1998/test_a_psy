class FontFamily {
  static final FontFamily _appConstant = FontFamily._internal();

  factory FontFamily() {
    return _appConstant;
  }

  FontFamily._internal();
  static const String lato = "Lato";
  static const String regular = "$lato-Regular";
  static const String bold = "$lato-Bold";
  static const String medium = "$lato-Medium";
}