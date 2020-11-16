class StringUtils {
  static final StringUtils _appConstant = StringUtils._internal();

  factory StringUtils() {
    return _appConstant;
  }

  StringUtils._internal();
  static String getImageUrlAssets(String image) => "assets/images/$image.png";
  static String getImageSVGUrlAssets(String image) => "assets/images/$image.svg";
}
