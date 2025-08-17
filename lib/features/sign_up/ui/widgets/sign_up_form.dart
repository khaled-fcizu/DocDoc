import 'package:docdoc/core/helpers/app_regix.dart';
import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../login/ui/widgets/password_validations.dart'
    show PasswordValidations;

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPasswordObscureText = true;
  bool isConfermPasswordObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    addListenerToPasswordController();
  }

  void addListenerToPasswordController() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().signUpKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Name is required';
              }
            },
            controller: context.read<SignUpCubit>().nameController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Phone',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Phone is required';
              } else if (!AppRegex.isPhoneNumberValid(value)) {
                return 'Phone number format not valid';
              }
            },
            controller: context.read<SignUpCubit>().phoneController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
            },
            controller: context.read<SignUpCubit>().emailController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              } else if (!AppRegex.hasMinLength(value)) {
                return 'at least 8 characters required';
              } else if (!AppRegex.hasLowerCase(value)) {
                return 'doesn\'t have lower case';
              } else if (!AppRegex.hasUpperCase(value)) {
                return 'doesn\'t have upper case';
              } else if (!AppRegex.hasNumber(value)) {
                return 'doesn\'t have number';
              } else if (!AppRegex.hasSpecialCharacter(value)) {
                return 'doesn\'t have special character';
              }
            },
            controller: context.read<SignUpCubit>().passwordController,
            obscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: isPasswordObscureText
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility, color: ColorsManager.mainBlue),
            ),
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Conferm Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Conferm Password is required';
              }
            },
            controller: context.read<SignUpCubit>().confermPasswordController,
            obscureText: isConfermPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfermPasswordObscureText = !isConfermPasswordObscureText;
                });
              },
              child: isConfermPasswordObscureText
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility, color: ColorsManager.mainBlue),
            ),
          ),
          verticalSpace(16),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
