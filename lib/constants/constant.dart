import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(48));
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20));
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(18));
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5);
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(16), color: Colors.black);
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(20),
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }
}
