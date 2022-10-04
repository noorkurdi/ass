import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/pages/login_page.dart';
import 'package:assist_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';
import '../widgets/my_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      // Container(
                      //   height: 180,
                      //   // child: Image.asset('images/1.jpg'),
                      // ),
                      Text('Hay Yow',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              color: Colors.purple[200]))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyButton(
                        primaryColor: AppColors.primaryColor,
                        textColor: Colors.white,
                        minWid: 10,
                        minHeight: 40,
                        maxWid: 10,
                        maxHeight: 40,
                        title: 'تسجيل الدخول',
                        onPressed: () {
                          appCubit.getToken();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const LogInPage()),
                            ),
                          );
                          // print(appCubit.spList[0].token);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyButton(
                        primaryColor: AppColors.primaryColor,
                        textColor: Colors.white,
                        minWid: 10,
                        minHeight: 40,
                        maxWid: 10,
                        maxHeight: 40,
                        title: 'تسجيل',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const RegisterPage()),
                            ),
                          );
                        }),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
