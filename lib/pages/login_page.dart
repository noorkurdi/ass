import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/pages/home_page.dart';
import 'package:assist_app/pages/register_page.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:assist_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/app_colors.dart';
import '../widgets/my_button.dart';

class LogInPage extends StatelessWidget {
   LogInPage({Key? key}) : super(key: key);
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // SizedBox(
                    //   height: 50,
                    // ),
Container(
  
                        height: 75,
                        width: 200,
                          child: Row(
                        children: [
                          Text(
                          'تسجيل الدخول',
                            
                            style: TextStyle(
                              
                              fontSize: 40,
                              color: AppColors.secondaryColor,
                              fontFamily: AppStrings.appFont,
                              
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          // Icon(Icons.list,size: 30,color: AppColors.secondaryColor,),
                        ],
                      )),
                      
              Divider(
                  color: Colors.grey[550],
                  thickness: 3,
              ),
              SizedBox(
                            width: 7,
                          ),
                    MyTextFeild(
                        validator: true,
                        controller: appCubit.emailController,
                        lableText: "البريد الألكتروني",
                        textInputType: TextInputType.emailAddress,
                        hintText: 'ahmad@gmail.com',
                      ),
                    SizedBox(
                      height: 10,
                    ),MyTextFeild(
                        validator: true,
                        controller: appCubit.passwordController,
                        lableText: "كلمة السر",
                        textInputType: TextInputType.visiblePassword,
                        hideInput: true,
                        hintText: 'xxxxxxxx',
                      ),
                    SizedBox(
                      height: 15,
                    ),
                    MyButton(
                        primaryColor: AppColors.primaryColor,
                        textColor: Colors.white,
                        minWid: 10,
                        minHeight: 35,
                        maxWid: 10,
                        maxHeight: 35,
                        title: 'تسجيل الدخول',
                        onPressed: ()  {
                           if (formKey.currentState!.validate()) {
                           appCubit.logInEvents();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                           }
                        }),
                      SizedBox(
                        height: 5,
                      ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>  RegisterPage()),
                          ),
                        );
                      },
                      child: Text(
                        'ليس لديك حساب؟',
                        style:
                            TextStyle(color: AppColors.secondaryColor,fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
