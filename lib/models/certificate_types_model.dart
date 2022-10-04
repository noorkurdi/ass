class CertificateTypesModel {
  String type;

  CertificateTypesModel({required this.type});

  factory CertificateTypesModel.fromJson(Map<String, dynamic> json) {
    return CertificateTypesModel(
      type: json['name'] as String,
    );
  }
}

class GetAllCertificateTypes {
  List<CertificateTypesModel> getAll;
  GetAllCertificateTypes({required this.getAll});
  factory GetAllCertificateTypes.fromJson(Map<String, dynamic> json) {
    return GetAllCertificateTypes(
      getAll: List<CertificateTypesModel>.from(
        json['data'].map(
          (x) => CertificateTypesModel.fromJson(x),
        ),
      ),
    );
  }
}
