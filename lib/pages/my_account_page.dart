import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/core/utils/app_colors.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/widgets/my_drawer.dart';
import 'package:assist_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAccountPage extends StatelessWidget {
  MyAccountPage({Key? key}) : super(key: key);
  bool edit = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit appCubit = AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            // appBar: AppBar(
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            // ),
            endDrawer: const MyDrawer(),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),

                    // elevation: 5,
                    color: AppColors.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'الملف الشخصي',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: AppStrings.appFont,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Card(
                        child: Container(
                          width: 450,
                          height: 420,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          AppStrings.firstNameEnglish,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                        Text(
                                          ':(EN)الأسم الأول',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                        ),
                                        

                                      ],
                                    ),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.middleNameEnglish,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':(EN)الأسم الأوسط',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.lastNameEnglish,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':(EN)الأسم الأخير',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                       Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.country,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':المدينة',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                       Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.email,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':البريد الإلكتروني',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      )
                                  ],
                                ),
                               
                                Column(
                                   mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          AppStrings.firstNameArabic,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                        Text(
                                          ':الأسم الأول',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                        ),
                                      ],
                                    ),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.middleNameArabic,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':الأسم الأوسط',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.lastNameArabic,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':الأسم الأخير',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                       Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.specialization,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':الأختصاص',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                       Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.birth,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':الميلاد',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      ),
                                       Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                          AppStrings.phone,
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 16,
                                              color: AppColors.secondaryColor),
                                        ),
                                          Text(
                                          ':الهاتف',
                                          style: TextStyle(
                                              fontFamily: AppStrings.appFont,
                                              fontSize: 12,
                                              color: AppColors.hintColor),
                                    ),
                                        ],
                                      )

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        shadowColor: Colors.black,
                        color: Colors.white,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      )),
                ],
              ),
            ),
          );
        });
  }
}
