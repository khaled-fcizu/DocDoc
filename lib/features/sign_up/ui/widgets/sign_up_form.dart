import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(hintText: 'Name', validator: (value) {}),
        verticalSpace(16),
        AppTextFormField(hintText: 'Phone', validator: (value) {}),
        verticalSpace(16),
        AppTextFormField(hintText: 'Email', validator: (value) {}),
        verticalSpace(16),
        AppTextFormField(hintText: 'Password', validator: (value) {}),
        verticalSpace(16),
        AppTextFormField(hintText: 'Conferm Password', validator: (value) {}),
        verticalSpace(2 * 16),
      ],
    );
  }
}
