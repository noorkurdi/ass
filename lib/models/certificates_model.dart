class CertificatesModel {
  int numberOfSessions;
  int numberOfHours;
  String grantDate;
  int teacherId;
  int studentId;
  int courseId;
  String certificateQr;
  int certificateTypeId;

  CertificatesModel(
      {required this.numberOfSessions,
      required this.studentId,
      required this.numberOfHours,
      required this.certificateTypeId,
      required this.grantDate,
      required this.certificateQr,
      required this.courseId,
      required this.teacherId});

  factory CertificatesModel.fromJson(Map<String, dynamic> json) {
    return CertificatesModel(
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

class GetAllCertificates {
  List<CertificatesModel> getAll;
  GetAllCertificates({required this.getAll});
  factory GetAllCertificates.fromJson(Map<String, dynamic> json) {
    return GetAllCertificates(
      getAll: List<CertificatesModel>.from(
        json['data'].map(
          (x) => CertificatesModel.fromJson(x),
        ),
      ),
    );
  }
}
