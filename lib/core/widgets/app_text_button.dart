import 'package:doctor_app/core/theming/color.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.onPressed,
      required this.buttonText,
      this.buttonStyle,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight});
  final void Function()? onPressed;
  final String buttonText;
  final TextStyle? buttonStyle;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius ?? 16,
              ),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor ?? ColorManager.mainBlue,
          ),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h,
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(
              buttonWidth?.w ?? double.maxFinite,
              buttonHeight?.h ?? 50.h,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: buttonStyle ?? TextStyles.font16WhiteSemiBold,
        ));
  }
}
