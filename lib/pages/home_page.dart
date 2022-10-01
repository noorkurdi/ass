import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/models/users_model.dart';
import 'package:assist_app/pages/edit_page.dart';
import 'package:assist_app/widgets/my_button.dart';
import 'package:assist_app/widgets/my_drawer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          drawer: MyDrawer(),
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
                color: Colors.purple,
                title: 'Edit user ',
              ),
            ),
          )),
        );
      },
    );
  }
}
