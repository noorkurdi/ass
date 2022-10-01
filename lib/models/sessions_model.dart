class Sessions {
  String sessionDate;
  String sessionQr;
  int courseId;

  Sessions(
      {required this.courseId,
      required this.sessionDate,
      required this.sessionQr});

  factory Sessions.fromJson(Map<String, dynamic> json) {
    return Sessions(
      sessionDate: json['session_date'] as String,
      sessionQr: json['session_qr'] as String,
      courseId: json['course_id'] as int,
    );
  }
}
