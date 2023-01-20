class Utils {
  static String getImagePath(String name, {String format = 'png'}) {
    return 'assets/images/$name.$format';
  }

  static String getSvgFilePath(String name, {String format = 'svg'}) {
    return 'assets/svg/$name.$format';
  }
}
