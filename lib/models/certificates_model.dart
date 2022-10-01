class Certificates {
  int numberOfSessions;
  int numberOfHours;
  String grantDate;
  int teacherId;
  int studentId;
  int courseId;
  String certificateQr;
  int certificateTypeId;

  Certificates(
      {required this.numberOfSessions,
      required this.studentId,
      required this.numberOfHours,
      required this.certificateTypeId,
      required this.grantDate,
      required this.certificateQr,
      required this.courseId,
      required this.teacherId});

  factory Certificates.fromJson(Map<String, dynamic> json) {
    return Certificates(
      numberOfSessions: json['number_of_sessions'] as int,
      numberOfHours: json['number_of_hours'] as int,
      grantDate: json['grant_date'] as String,
      teacherId: json['teacher_id'] as int,
      studentId: json['student_id'] as int,
      courseId: json['courscourse_ideId'] as int,
      certificateQr: json['course_id'] as String,
      certificateTypeId: json['certificate_type_id'] as int,
    );
  }
}
