import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

abstract class Style {
  //  when u make the text style file u see the whole app and find the repeated text styles and put them here
  // u focus with the font size and (weight only use the most repeated ones )
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const textStyle22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFineRegular,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFineRegular,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
