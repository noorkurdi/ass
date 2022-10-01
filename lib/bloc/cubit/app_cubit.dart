import 'dart:convert';

import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/models/users_model.dart';
import 'package:assist_app/pages/welcome_page.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../dio/dio_helper.dart';

part '../states/app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit(this.sharedPreferences) : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  //controller
  SharedPreferences sharedPreferences;

  TextEditingController firstNameArabicController = TextEditingController();
  TextEditingController middleNameArabicController = TextEditingController();
  TextEditingController lastNameArabicController = TextEditingController();
  TextEditingController firstNameEnglishController = TextEditingController();
  TextEditingController middleNameEnglishController = TextEditingController();
  TextEditingController lastNameEnglishController = TextEditingController();
  TextEditingController specializationController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late UsersModel usersModel;
//events

  Future<bool> registerEvents() async {
    var data = {
      'first_name_ar': firstNameArabicController.text.trim(),
      'middle_name_ar': middleNameArabicController.text.trim(),
      'last_name_ar': lastNameArabicController.text.trim(),
      'first_name_en': firstNameEnglishController.text.trim(),
      'middle_name_en': middleNameEnglishController.text.trim(),
      'last_name_en': lastNameEnglishController.text.trim(),
      'specialization': specializationController.text.trim(),
      'country': countryController.text.trim(),
      'birthday': birthController.text.trim(),
      'phone': phoneController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text,
    };
    try {
      var responce = await DioHelper.register(data: data);
      if (responce.statusCode == 200) {
        emit(RefreshUIAppState());
        print('succeed');
        return true;
      } else {
        emit(RefreshUIAppState());
        print(responce.statusCode.toString());
        return false;
      }
    } catch (e) {
      emit(RefreshUIAppState());
      print(e);
      return false;
    }
  }

  Future<bool> logInEvents() async {
    var data = {
      'email': emailController.text.trim(),
      'password': passwordController.text,
    };
    try {
      var responce = await DioHelper.login(data: data).then((
        value,
      ) async {
        AppStrings.token = value.data[AppStrings.keyAccessToken];
        sharedPreferences = await SharedPreferences.getInstance();
        sharedPreferences.setString('token', AppStrings.token);
      });
      if (responce.statusCode == 200) {
        emit(RefreshUIAppState());
        return true;
      } else {
        emit(RefreshUIAppState());
        print(responce.statusCode.toString());
        return false;
      }
    } catch (e) {
      emit(RefreshUIAppState());
      print(e);
      return false;
    }
  }

  void fillEvent() {
    usersModel = UsersModel(
        firstNameArabic: firstNameArabicController.text.trim(),
        middleNameArabic: middleNameArabicController.text.trim(),
        lastNameArabic: lastNameArabicController.text.trim(),
        firstNameEnglish: firstNameEnglishController.text.trim(),
        middleNameEnglish: middleNameEnglishController.text.trim(),
        lastNameEnglish: lastNameEnglishController.text.trim(),
        specialization: specializationController.text.trim(),
        country: countryController.text.trim(),
        birth: birthController.text.trim(),
        phone: phoneController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text);

    emit(RefreshUIAppState());
  }

  Future<bool> editUserById(int id) async {
    var data = {
      'first_name_ar': firstNameArabicController.text.trim(),
      'middle_name_ar': middleNameArabicController.text.trim(),
      'last_name_ar': lastNameArabicController.text.trim(),
      'first_name_en': firstNameEnglishController.text.trim(),
      'middle_name_en': middleNameEnglishController.text.trim(),
      'last_name_en': lastNameEnglishController.text.trim(),
      'specialization': specializationController.text.trim(),
      'country': countryController.text.trim(),
      'birthday': birthController.text.trim(),
      'phone': phoneController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text,
    };
    try {
      var responce = await DioHelper.editUserById(data: data, id: id);
      if (responce.statusCode == 200) {
        fillEvent();
        emit(RefreshUIAppState());
        print('succeed');
        return true;
      } else {
        emit(RefreshUIAppState());
        print(responce.statusCode.toString());
        return false;
      }
    } catch (e) {
      emit(RefreshUIAppState());
      print(e);
      return false;
    }
  }

  Future<void> getToken() async {
    String? token;
    sharedPreferences = await SharedPreferences.getInstance();
    token = sharedPreferences.getString('token') ?? 'no token';
    print(token);
  }

  Future<void> logOut() async {
    try {
      String token;
      sharedPreferences = await SharedPreferences.getInstance();
      token = sharedPreferences.getString('token') ?? 'no token';
      print(token);
      var response = await DioHelper.logOut(token);
      if (response.statusCode == 200) {
        emit(RefreshUIAppState());
      } else {
        emit(RefreshUIAppState());
        print(response.statusCode.toString());
      }
    } catch (e) {
      emit(RefreshUIAppState());
    }
  }

  Future<void> logOutOnMyWay() async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', '');
  }
}