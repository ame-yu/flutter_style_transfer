import 'package:flutter/material.dart';

class TextStyles {
  /// Declare a base style for each Family
  static const TextStyle raleway =
      const TextStyle(fontWeight: FontWeight.w400, height: 1);
  static const TextStyle fraunces =
      const TextStyle(fontWeight: FontWeight.w400, height: 1);

  static TextStyle get h1 => fraunces.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 48,
      letterSpacing: -1,
      height: 1.17);
  static TextStyle get h2 =>
      h1.copyWith(fontSize: 24, letterSpacing: -.5, height: 1.16);
  static TextStyle get h3 =>
      h1.copyWith(fontSize: 14, letterSpacing: -.05, height: 1.29);
  static TextStyle get title1 =>
      raleway.copyWith(fontWeight: FontWeight.bold, fontSize: 16, height: 1.31);
  static TextStyle get title2 =>
      title1.copyWith(fontWeight: FontWeight.w500, fontSize: 14, height: 1.36);
  static TextStyle get body1 => raleway.copyWith(
      fontWeight: FontWeight.normal, fontSize: 14, height: 1.71);
  static TextStyle get body2 =>
      body1.copyWith(fontSize: 12, height: 1.5, letterSpacing: .2);
  static TextStyle get body3 =>
      body1.copyWith(fontSize: 12, height: 1.5, fontWeight: FontWeight.bold);
  static TextStyle get callout1 => raleway.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: 12,
      height: 1.17,
      letterSpacing: .5);
  static TextStyle get callout2 =>
      callout1.copyWith(fontSize: 10, height: 1, letterSpacing: .25);
  static TextStyle get caption =>
      raleway.copyWith(fontWeight: FontWeight.w500, fontSize: 11, height: 1.36);
}
