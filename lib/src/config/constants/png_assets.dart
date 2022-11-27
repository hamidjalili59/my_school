class PngAssets {
  const PngAssets._();

  static String get logo => 'logo'.png;
  static String get mailIcon => 'mail'.png;
  static String get checkIcon => 'check'.png;
  static String get tableIcon => 'table'.png;
  static String get resetIcon => 'reset'.png;
  static String get cancelIcon => 'cancel'.png;
  static String get courseIcon => 'book'.coursePng;
  static String get schoolIcon => 'school_icon'.png;
  static String get addClassIcon => 'add_class'.png;
  static String get schoolAppIcon => 'school_appicon'.png;
  static String get studentProfile => 'person'.studentPng;
  static String get teacherProfile => 'person'.teacherPng;
}

extension on String {
  String get png => 'assets/icons/$this.png';
  String get coursePng => 'assets/icons/course/$this.png';
  String get studentPng => 'assets/icons/student/$this.png';
  String get teacherPng => 'assets/icons/teacher/$this.png';
}
