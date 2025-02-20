import 'package:flutter/material.dart';
import 'package:ofer/src/theme/colors.dart';

class BaseLayout extends StatelessWidget {
  final Widget? child;
  final PreferredSizeWidget? appBar;
  final bool showBackButton;
  final Function? onBackTap;
  final double? childTopPosition;
  final bool showBottomNavbar;
  const BaseLayout({
    super.key,
    this.child,
    this.appBar,
    this.showBackButton = false,
    this.onBackTap,
    this.childTopPosition,
    this.showBottomNavbar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.greyFD,
        appBar: appBar,
        resizeToAvoidBottomInset: true,
        body: const SizedBox(),
      ),
    );
  }
}
