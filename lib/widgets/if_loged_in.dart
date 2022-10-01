import 'package:assist_app/pages/home_page.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IfLogedIn extends StatelessWidget {
  const IfLogedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (true) {
      return HomePage();
    } else {
      return WelcomePage();
    }
  }
}
