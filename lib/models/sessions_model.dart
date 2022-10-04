class SessionsModel {
  String sessionDate;
  String sessionQr;
  int courseId;

  SessionsModel(
      {required this.courseId,
      required this.sessionDate,
      required this.sessionQr});

  factory SessionsModel.fromJson(Map<String, dynamic> json) {
    return SessionsModel(
      sessionDate: json['session_date'] as String,
      sessionQr: json['session_qr'] as String,
      courseId: json['course_id'] as int,
    );
  }
}
