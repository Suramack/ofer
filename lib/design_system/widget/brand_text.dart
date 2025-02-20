import 'package:flutter/material.dart';

import '../../src/theme/colors.dart';
import '../font/brand_font.dart';

class BrandText extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  final String? fontFamily;
  final double? fontSize;
  final TextAlign? textAlign;
  const BrandText({
    super.key,
    required this.data,
    this.textStyle,
    this.fontFamily,
    this.textAlign,
    this.fontSize,
  });
  const BrandText.primary({
    super.key,
    required this.data,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle1,
      color: AppColor.primary,
      fontWeight: FontWeight.w400,
    ),
  });
  const BrandText.secondary({
    super.key,
    required this.data,
    this.fontFamily,
    this.textAlign,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle2,
      color: AppColor.black,
    ),
  });
  const BrandText.grey({
    super.key,
    this.fontFamily,
    required this.data,
    this.textAlign,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle2,
      color: AppColor.greyDC,
    ),
  });
  const BrandText.white({
    super.key,
    required this.data,
    this.fontFamily,
    this.textAlign,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle2,
      color: AppColor.white,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: textStyle?.copyWith(
            fontSize: fontSize,
          ) ??
          textStyle,
      textAlign: textAlign,
    );
  }
}
