import 'package:assist_app/bloc/cubit/app_cubit.dart';

import 'package:assist_app/models/users_model.dart';
import 'package:assist_app/pages/edit_page.dart';
import 'package:assist_app/widgets/my_button.dart';
import 'package:assist_app/widgets/my_drawer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/enums/connection_enum.dart';
import '../core/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return appCubit.connectionEnum==ConnectionEnum.isConnecting?Center(child: CircularProgressIndicator(color: AppColors.primaryColor,),): Scaffold(
          appBar: AppBar(),
          endDrawer: MyDrawer(),
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: MyButton(
                onPressed: () {
                  // appCubit.fillEvent(usersModel)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditPage(),
                    ),
                  );
                },
                primaryColor: AppColors.primaryColor,
                textColor: Colors.white,
                minWid: 10,
                minHeight: 35,
                maxWid: 10,
                maxHeight: 35,
                title: 'Edit user ',
              ),
            ),
          )),
        );
      },
    );
  }
}
