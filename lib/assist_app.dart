import 'package:assist_app/config/themes/app_theme.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/pages/my_account_page.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:flutter/Material.dart';

import 'core/utils/app_colors.dart';

class AssistApp extends StatelessWidget {
  const AssistApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme:ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
