import 'package:docdoc/core/di/dependancy_injection.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/helpers/shared_prefrance_helper.dart';
import 'package:docdoc/docdoc_app.dart';
import 'package:flutter/material.dart';

bool isLoggedIn = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isLoggedOnChecker();
  setUpGetIt();
  runApp(const DocDocApp());
}

isLoggedOnChecker() async {
  final String? token = await SharedPrefHelper.getSecureString(
    SharedPrefHelperKeys.userToken,
  );
  if (token.isNullOrEmpty()) {
    isLoggedIn = false;
  } else {
    isLoggedIn = true;
  }
}
