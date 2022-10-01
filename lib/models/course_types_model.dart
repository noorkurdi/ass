class CourseTypes {
  String type;

  CourseTypes({required this.type});

  factory CourseTypes.fromJson(Map<String, dynamic> json) {
    return CourseTypes(
      type: json['name'] as String,
    );
  }
}
