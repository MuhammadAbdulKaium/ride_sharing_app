import 'package:flutter/cupertino.dart';

extension ContextExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get topPadding => MediaQuery.of(this).padding.top;
  double get bottomPadding => MediaQuery.of(this).padding.bottom;

  double get screenWidthUnitDesignPerspective => MediaQuery.of(this).size.width / 393;
  double get screenHeightUnitDesignPerspective => MediaQuery.of(this).size.height / 852;
}