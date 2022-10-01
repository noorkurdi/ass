class Attendances {
  String attendanceDate;
  String sessionId;
  String studentId;

  Attendances(
      {required this.attendanceDate,
      required this.sessionId,
      required this.studentId});

  factory Attendances.fromJson(Map<String, dynamic> json) {
    return Attendances(
      attendanceDate: json['attendance_date'] as String,
      sessionId: json['attendance_date'] as String,
      studentId: json['student_id'] as String,
    );
  }
}
