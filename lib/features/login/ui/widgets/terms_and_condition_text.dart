import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13DarkBlueMedian,
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedian.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}