import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:flutter/Material.dart';

class AssistApp extends StatelessWidget {
  const AssistApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
