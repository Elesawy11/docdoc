import 'package:doctor_app/core/theming/image_path.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/theming/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(SvgPath.logoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(ImagePath.onboardingDoctor),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\n Appointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            )),
      ],
    );
  }
}
