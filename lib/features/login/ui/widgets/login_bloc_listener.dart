import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/networking/api_error_model.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/login/logic/login_cubit.dart';
import 'package:docdoc/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is LoginLoading ||
            current is LoginFailure ||
            current is LoginSeccess;
      },
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                );
              },
            );
          },
          loginSeccess: (loginSuccess) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          loginError: (apiErrorModel) {
            context.pop();
            setUpErrorDialog(context, apiErrorModel);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setUpErrorDialog(BuildContext context, ApiErrorModel apiErrorModel) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(Icons.error, color: Colors.red, size: 32),
          content: Text(
            apiErrorModel.getAllErrorMessages(),
            style: TextStyles.font15DarkBlueMeduim,
          ),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text('Got it', style: TextStyles.font13MainBlueSemiBold),
            ),
          ],
        );
      },
    );
  }
}
