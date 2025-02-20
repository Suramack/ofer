import 'package:flutter/material.dart';
import 'package:ofer/design_system/font/brand_font.dart';
import 'package:ofer/src/theme/colors.dart';

import '../style/brand_space.dart';
import '../style/text_style.dart';
import 'brand_text.dart';

class BrandButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color? bgColor, fontColor;
  final double borderRadius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool isDiable;
  const BrandButton.primary({
    super.key,
    required this.onTap,
    required this.title,
    this.bgColor = AppColor.primary,
    this.fontColor = AppColor.white,
    this.borderRadius = 12,
    this.fontSize = BrandFontSize.headline3,
    this.fontWeight = FontWeight.w400,
    this.isDiable = false,
  });
  const BrandButton({
    super.key,
    required this.onTap,
    required this.title,
    this.bgColor,
    this.fontColor,
    this.borderRadius = 12,
    this.fontSize,
    this.isDiable = false,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 20, minWidth: 40),
      child: Container(
        decoration: BoxDecoration(
          color: isDiable ? AppColor.grey7D : bgColor ?? AppColor.primary,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: InkWell(
          onTap: () {
            if (!isDiable) onTap();
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: BrandSpace.gap6),
              child: BrandText.primary(
                data: title,
                textStyle: BrandTextStyle(
                  color: fontColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
