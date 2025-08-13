import 'package:docdoc/core/helpers/app_regix.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/logic/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spaces_helpers.dart';
import '../../../../core/theming/text_styles.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
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
      key: context.read<LoginCubit>().loginFormKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value == '' ||
                  !AppRegex.isEmailValid(value)) {
                return 'Email not valid';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null || value == '') {
                return 'password not valid';
              }
            },
            controller: context.read<LoginCubit>().passwordController,
            obscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility, color: ColorsManager.mainBlue),
            ),
          ),
          verticalSpace(16),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forget Password?',
              style: TextStyles.font12MainBlueRegular,
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
