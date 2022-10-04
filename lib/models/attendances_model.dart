class AttendancesModel {
  String attendanceDate;
  String sessionId;
  String studentId;

  AttendancesModel(
      {required this.attendanceDate,
      required this.sessionId,
      required this.studentId});

  factory AttendancesModel.fromJson(Map<String, dynamic> json) {
    return AttendancesModel(
      attendanceDate: json['attendance_date'] as String,
      sessionId: json['attendance_date'] as String,
      studentId: json['student_id'] as String,
    );
  }
}
