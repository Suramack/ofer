import 'package:flutter/material.dart';
import 'package:ofer/design_system/font/brand_font.dart';

import '../../src/theme/colors.dart';

class BrandTextStyle extends TextStyle {
  static const brandTextStyle1 = TextStyle(
    fontSize: BrandFontSize.headline1,
    color: AppColor.black,
    fontWeight: FontWeight.w400,
  );
  static const brandTextStyle2 = TextStyle(
    fontSize: BrandFontSize.body,
    color: AppColor.black,
    fontWeight: FontWeight.w400,
  );
  @override
  // ignore: overridden_fields
  final Color? color;
  @override
  // ignore: overridden_fields
  final double? fontSize;
  @override
  // ignore: overridden_fields
  final FontWeight? fontWeight;
  @override
  // ignore: overridden_fields
  final String? fontFamily;
  const BrandTextStyle({
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
  });
}
