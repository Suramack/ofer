import 'package:flutter/material.dart';

class BrandVSpace extends StatelessWidget {
  final double? height;
  const BrandVSpace({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class BrandHSpace extends StatelessWidget {
  final double? width;
  const BrandHSpace({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
