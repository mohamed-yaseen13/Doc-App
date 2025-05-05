import 'package:doc_app/core/dependency_injection/di.dart';
import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/helpers/shared_pref.dart';
import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIfUserLoggedIn();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfUserLoggedIn() async {
  String? userToken = await SharedPref.getSecuredString(SharedPref.userToken);

  if (!userToken.isNullOrEmpty()) {
    SharedPref.isUserLoggedIn = true;
  } else {
    SharedPref.isUserLoggedIn = false;
  }
}
