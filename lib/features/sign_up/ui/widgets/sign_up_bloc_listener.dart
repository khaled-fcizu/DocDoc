import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/networking/api_error_model.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_cubit.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener;

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) {
        return current is SignUpError ||
            current is SignUpLoading ||
            current is SignUpSuccess;
      },
      listener: (context, state) {
        state.whenOrNull(
          signUpLoading: () {
            setUpSignUpLoadingState(context);
          },
          signUpSuccess: (signUpResponseBody) {
            context.pop();
            setUpSuccessState(context);
          },
          signUpError: (apiErrorModel) {
            context.pop();
            setUpErrorState(context, apiErrorModel);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setUpSignUpLoadingState(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(color: ColorsManager.mainBlue),
        );
      },
    );
  }

  void setUpSuccessState(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Signup Successful'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setUpErrorState(context, ApiErrorModel apiErrorModel) {
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
