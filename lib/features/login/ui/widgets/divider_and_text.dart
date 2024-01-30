import 'package:doctor_app/core/theming/color.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DividerAndText extends StatelessWidget {
  const DividerAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Divider(
            color: ColorManager.lightGray,
            thickness: 2,
          ),
        ),
        Align(
          child: Text(
            ' Or sign up ',
            style: TextStyles.font13GrayRegular,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Divider(
            color: ColorManager.lightGray,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
