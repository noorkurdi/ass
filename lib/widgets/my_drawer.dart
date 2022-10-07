import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/core/utils/app_colors.dart';
import 'package:assist_app/core/utils/app_strings.dart';

import 'package:assist_app/pages/certificates_page.dart';
import 'package:assist_app/pages/courses_page.dart';
import 'package:assist_app/pages/my_account_page.dart';
import 'package:assist_app/pages/settings_page.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_button.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Drawer(
            elevation: 5,
            child: ListView(
              children: [
                DrawerHeader(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Icon(Icons.person , color: Colors.grey[300],size: 80,),
              ),
            ),
           const Spacer(),
            Padding(
              padding: const EdgeInsets.only( bottom: 12),
              child: Text(
                AppStrings.firstNameArabic,
                style:const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 25,),
              ),
            ),
          ],
        ),
                ),
                ListTile(
        trailing:const Text(
          'كورساتي',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CoursesPage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
                ),
                SizedBox(
        height: 8,
                ),
                ListTile(
        trailing:const Text(
          'شهاداتي',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CertificatesPage(),
              ),
            );
          },
          icon:const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
                ),
            const    SizedBox(
        height: 8,
                ),
                ListTile(
        trailing:const Text(
          'الحساب',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>  MyAccountPage(),
              ),
            );
          },
          icon:const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
                ),
              const  SizedBox(
        height: 8,
                ),
                ListTile(
        trailing:const Text(
          'الإعدادات',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
          icon:const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
                ),
                Divider(
        color: Colors.grey[550],
                ),
              const  Center(
          child: Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
                
             const   SizedBox(
        height: 8,
                ),
                Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.whatsapp,
            color: Colors.green,
            size: 40,
          ),
          Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 40,
          ),
          Icon(
            Icons.phone,
            size: 40,
          ),
        ],
                ),
                Padding(
        padding: const EdgeInsets.all(18.0),
        child: MyButton(
          textSize: 20,
          maxHeight: 30,
          maxWid: 15,
          minHeight: 30,
          minWid: 15,
          primaryColor: Colors.red,
          textColor: Colors.white,
          title: 'تسجيل الخروج',
          elevation: 0,
          onPressed: () {
            appCubit.logOut();

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
          },
        ),
                ),
              ],
            ),
          );
      },
    );
  }
}
