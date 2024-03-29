import 'package:doctor_app/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorManager.gray,
  );

  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600
  );
}
