import 'package:assist_app/bloc/cubit/app_cubit.dart';
import 'package:assist_app/models/courses_model.dart';
import 'package:assist_app/pages/courses_page.dart';
import 'package:assist_app/pages/home_page.dart';
import 'package:assist_app/pages/login_page.dart';
import 'package:assist_app/pages/register_page.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'assist_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sp = await SharedPreferences.getInstance();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<AppCubit>(create: (context) => AppCubit(sp)),
  ], child: const AssistApp()));
}
