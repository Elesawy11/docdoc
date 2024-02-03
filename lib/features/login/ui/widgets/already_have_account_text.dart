import 'package:doctor_app/core/helpers/extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet? ',
          style: TextStyles.font13DarkBlueRegular,
        ),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.registerScreen);
          },
          child: Text(
            'Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ),
      ],
    );
  }
}

// RichText(
//       textAlign: TextAlign.center,
//       text: TextSpan(children: [
//         TextSpan(
//             text: 'Already have an account yet? ',
//             style: TextStyles.font13DarkBlueRegular),
            
//         TextSpan(text: 'Sign Up', style: TextStyles.font13BlueSemiBold)
//       ],),
//     );
