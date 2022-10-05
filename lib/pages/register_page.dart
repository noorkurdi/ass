import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/pages/home_page.dart';
import 'package:assist_app/widgets/my_dropdown_menu.dart';
import 'package:assist_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../core/utils/app_colors.dart';
import '../widgets/my_button.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Form(
                  key: formKey,
                                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 75,
                        width: 200,
                          child: Row(
                        children: [
                          Text(
                            'إنشاء حساب جديد',
                            
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
                          controller: appCubit.firstNameArabicController,
                          lableText: 'الأسم الاول'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.middleNameArabicController,
                        lableText: 'الأسم الأوسط',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.lastNameArabicController,
                        lableText: "الأسم الأخير",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.firstNameEnglishController,
                        lableText: 'First Name',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.middleNameEnglishController,
                        lableText: 'Middle Name',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.lastNameEnglishController,
                        lableText: 'Last Name',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.specializationController,
                        lableText: 'الأختصاص',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.countryController,
                        lableText: "المدينة",
                        
                        

                      ),
                      SizedBox(
                        height: 10,
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
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.birthController,
                        lableText: "تاريخ الميلاد",
                        textInputType: TextInputType.datetime,
                        readOnly: true,
                        onTap: () async {
                          
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime.now());

                        if (pickeddate != null) {
                          appCubit.birthController.text =
                              DateFormat('yyyy-MM-dd').format(pickeddate);

                        };
                        }
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.phoneController,
                        lableText: "رقم الهاتف",
                        textInputType: TextInputType.phone,
                        hintText:'09xxxxxxxx'
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFeild(
                        validator: true,
                        controller: appCubit.passwordController,
                        lableText: "كلمة السر",
                        textInputType: TextInputType.visiblePassword,
                        hideInput: true,
                        hintText: 'xxxxxxxx',
                      ),
                      // TextFormField(
                      //   controller: appCubit.passwordController,
                      //   obscureText: true,
                      //   textAlign: TextAlign.center,
                      //   decoration: InputDecoration(
                      //     hintText: 'Enter Your Password',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(15),
                      //       ),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: Colors.purple[200]!, width: 1),
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(15),
                      //       ),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: Colors.blue[200]!, width: 2),
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(15),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      MyButton(
                          primaryColor: AppColors.primaryColor,
                          textColor: Colors.white,
                          minWid: 10,
                          minHeight: 35,
                          maxWid: 10,
                          maxHeight: 35,
                          title: 'Register',
                          onPressed: () async {
                              if (formKey.currentState!.validate()) {
                            await appCubit
                                .registerEvents()
                                .then((value) => print(value));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              
                              ),
                            );}
                          }),
                          SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>  LogInPage()),
                            ),
                          );
                        },
                        child: Text(
                          'لديك حساب؟',
                          style:
                              TextStyle(color: AppColors.secondaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
