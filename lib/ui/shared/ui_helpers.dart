import 'package:flutter/material.dart';

class UIHelper {
  static const double _VerticalSpaceSmall = 10.0;
  static const double _VerticalSpaceMedium = 20.0;
  static const double _VerticalSpaceLarge = 60.0;

  static const double _HorizontalSpaceSmall = 10.0;
  static const double _HorizontalSpaceMedium = 20.0;
  static const double HorizontalSpaceLarge = 60.0;

  static Widget verticalSpaceSmall() => verticalSpace(_VerticalSpaceSmall);

  static Widget verticalSpaceMedium() => verticalSpace(_VerticalSpaceMedium);

  static Widget verticalSpaceLarge() => verticalSpace(_VerticalSpaceLarge);

  static Widget verticalSpace(double height) => Container(height: height);

  static Widget horizontalSpaceSmall() => horizontalSpace(_HorizontalSpaceSmall);

  static Widget horizontalSpaceMedium() => horizontalSpace(_HorizontalSpaceMedium);

  static Widget horizontalSpaceLarge() => horizontalSpace(HorizontalSpaceLarge);

  static Widget horizontalSpace(double width) => Container(width: width);
}
