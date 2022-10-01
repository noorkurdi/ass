import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/models/users_model.dart';
import 'package:dio/dio.dart';

class WebServices {
  late Dio dio;

  WebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: AppStrings.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }
  Future<List<UsersModel>> getAllUsers() async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/users/getAll');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<UsersModel>> getCourseById(int id) async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/courses/get/$id');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<UsersModel>> getAllCourses() async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/courses/getAll');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<UsersModel>> getCourseTypeById(int id) async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/coursesTypes/get/$id');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<UsersModel>> getAllCoursesTypes() async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/coursesTypes/getAll');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<UsersModel>> getAllCertifecates() async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/certificates/getAll');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<UsersModel>> getCertifecateById(int id) async {
    try {
      Response response =
          await dio.get('http://127.0.0.1:8000/api/certificates/get/$id');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
