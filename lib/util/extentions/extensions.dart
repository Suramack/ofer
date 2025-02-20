import 'package:flutter/material.dart';

extension BreakPoint on BuildContext {
  Size get deviceSize => MediaQuery.sizeOf(this);
}
