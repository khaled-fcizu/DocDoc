import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildValidationRow('has minimum length of 8 characters', hasMinLength),
        verticalSpace(2),
        _buildValidationRow('has special character', hasSpecialCharacter),
        verticalSpace(2),
        _buildValidationRow('has upper case character', hasUpperCase),
        verticalSpace(2),
        _buildValidationRow('has lower case character', hasLowerCase),
        verticalSpace(2),
        _buildValidationRow('has number', hasNumber),
        verticalSpace(2),
      ],
    );
  }

  Widget _buildValidationRow(String validationCondation, bool hasAchieved) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.gray),
        horizontalSpace(6),
        Text(
          validationCondation,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasAchieved ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasAchieved ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
