class CertificateTypes {
  String type;

  CertificateTypes({required this.type});

  factory CertificateTypes.fromJson(Map<String, dynamic> json) {
    return CertificateTypes(
      type: json['name'] as String,
    );
  }
}
