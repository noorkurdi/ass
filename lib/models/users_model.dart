class UsersModel {
  String firstNameArabic;
  String middleNameArabic;
  String lastNameArabic;
  String firstNameEnglish;
  String middleNameEnglish;
  String lastNameEnglish;
  String specialization;
  String country;
  String email;
  String birth;
  String phone;
  String password;

  UsersModel(
      {required this.firstNameArabic,
      required this.middleNameArabic,
      required this.lastNameArabic,
      required this.firstNameEnglish,
      required this.middleNameEnglish,
      required this.lastNameEnglish,
      required this.specialization,
      required this.country,
      required this.birth,
      required this.phone,
      required this.email,
      required this.password});

  factory UsersModel.fromjson(Map<String, dynamic> json) {
    return UsersModel(
      firstNameArabic: json['first_name_ar'] as String,
      middleNameArabic: json['middle_name_ar'] as String,
      lastNameArabic: json['last_name_ar'] as String,
      firstNameEnglish: json['first_name_en'] as String,
      middleNameEnglish: json['middle_name_en'] as String,
      lastNameEnglish: json['last_name_en'] as String,
      specialization: json['specialization'] as String,
      country: json['country'] as String,
      birth: json['birthday'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}

class GetAllUsers {
  List<UsersModel> getAll;
  GetAllUsers({required this.getAll});
  factory GetAllUsers.fromJson(Map<String, dynamic> json) {
    return GetAllUsers(
      getAll: List<UsersModel>.from(
        json['data'].map(
          (x) => UsersModel.fromjson(x),
        ),
      ),
    );
  }
}
