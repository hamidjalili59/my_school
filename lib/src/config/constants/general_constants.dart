import 'package:flutter/material.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';

class GeneralConstants {
  static Size defaultDesignSize = const Size(360, 690);

  static double defaultBorderRadius = 10;
  static int currentIndexPage = 0;
  static int roleCount = 0;
  static String defaultFontName = '';
  static String host = 'https://my-school.iran.liara.run/';
  static String firstAppbarItem = '';
  // static String appbarTitle = 'مدرسه من';
  static String jwt = '';
  static bool isParent = false;
  static bool isTeacher = false;
  static bool isAdmin = false;
  static UserType userType = UserType.admin;
  static bool didStartSetup = false;

  static Color backgroundColor = const Color.fromARGB(255, 250, 239, 222);
  static Color mainColor = const Color.fromARGB(255, 120, 97, 177);
}
