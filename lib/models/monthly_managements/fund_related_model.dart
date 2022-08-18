class FundRelatedModel {
  int? id;
  String? samuhaId;
  String? bachatDar;
  String? bachatRakam;
  String? bilambaSulka;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;

  FundRelatedModel(
      {this.id,
      this.samuhaId,
      this.bachatDar,
      this.bachatRakam,
      this.bilambaSulka,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.samuhaName});

  factory FundRelatedModel.fromJson(Map<String, dynamic> json) {
    return FundRelatedModel(
    id : json['id'],
    samuhaId : json['samuha_id'],
    bachatDar : json['bachat_dar'],
    bachatRakam : json['bachat_rakam'],
    bilambaSulka : json['bilamba_sulka'],
    kaifayat : json['kaifayat'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    samuhaName : json['samuha_name'] != null
        ? new SamuhaName.fromJson(json['samuha_name'])
        : null,
        );
  }

}

class SamuhaName {
  int? id;
  String? wardNo;
  String? samuhakoName;
  String? tol;
  String? samuhaSadaksheSankha;
  String? aadakcheName;
  String? aadakchePhone;
  String? sachibName;
  String? sachibPhone;
  String? kosadakcheName;
  String? kosadakchePhone;
  String? niyemitBaithak;
  String? bachatDar;
  String? baajPratisad;
  String? kaifiyat;
  String? createdAt;
  String? updatedAt;

  SamuhaName(
      {this.id,
      this.wardNo,
      this.samuhakoName,
      this.tol,
      this.samuhaSadaksheSankha,
      this.aadakcheName,
      this.aadakchePhone,
      this.sachibName,
      this.sachibPhone,
      this.kosadakcheName,
      this.kosadakchePhone,
      this.niyemitBaithak,
      this.bachatDar,
      this.baajPratisad,
      this.kaifiyat,
      this.createdAt,
      this.updatedAt});

  factory SamuhaName.fromJson(Map<String, dynamic> json) {
    return SamuhaName(
    id : json['id'],
    wardNo : json['ward_no'],
    samuhakoName : json['samuhako_name'],
    tol : json['tol'],
    samuhaSadaksheSankha : json['samuha_sadakshe_sankha'],
    aadakcheName : json['aadakche_name'],
    aadakchePhone : json['aadakche_phone'],
    sachibName : json['sachib_name'],
    sachibPhone : json['sachib_phone'],
    kosadakcheName : json['kosadakche_name'],
    kosadakchePhone : json['kosadakche_phone'],
    niyemitBaithak : json['niyemit_baithak'],
    bachatDar : json['bachat_dar'],
    baajPratisad : json['baaj_pratisad'],
    kaifiyat : json['kaifiyat'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}