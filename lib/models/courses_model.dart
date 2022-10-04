class CoursesModel {
  String name;

  String? description;
  String startDate;
  int numberOfSessions;
  int numberOfHours;
  int teacherId;
  int courseTypeId;
  String dates;

  CoursesModel({
    required this.name,
    required this.teacherId,
    required this.startDate,
    required this.numberOfSessions,
    required this.numberOfHours,
    this.description,
    required this.dates,
    required this.courseTypeId,
  });

  factory CoursesModel.fromJson(Map<String, dynamic> json) {
    return CoursesModel(
      name: json['name'] as String,
      description:
          json["description"] != null ? json["description"] as String : null,
      startDate: json['start_date'] as String,
      numberOfSessions: json['number_of_sessions'] as int,
      numberOfHours: json['number_of_hours'] as int,
      teacherId: json['teacher_id'] as int,
      courseTypeId: json['course_type_id'] as int,
      dates: json['dates'] as String,
    );
  }
}

class GetAllCourses {
  List<CoursesModel> getAll;
  GetAllCourses({required this.getAll});
  factory GetAllCourses.fromJson(Map<String, dynamic> json) {
    return GetAllCourses(
      getAll: List<CoursesModel>.from(
        json['data'].map(
          (x) => CoursesModel.fromJson(x),
        ),
      ),
    );
  }
}
