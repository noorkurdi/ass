class CourseTypesModel {
  String type;

  CourseTypesModel({required this.type});

  factory CourseTypesModel.fromJson(Map<String, dynamic> json) {
    return CourseTypesModel(
      type: json['name'] as String,
    );
  }
}

class GetAllCourseTypes {
  List<CourseTypesModel> getAll;
  GetAllCourseTypes({required this.getAll});
  factory GetAllCourseTypes.fromJson(Map<String, dynamic> json) {
    return GetAllCourseTypes(
      getAll: List<CourseTypesModel>.from(
        json['data'].map(
          (x) => CourseTypesModel.fromJson(x),
        ),
      ),
    );
  }
}
