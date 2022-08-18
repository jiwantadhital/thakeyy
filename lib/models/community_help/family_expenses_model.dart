class FamilyExpensesModel {
  int? id;
  String? samuhaId;
  String? khadhanna;
  String? lattakapada;
  String? sikxyaId;
  String? aausadi;
  String? masu;
  String? dhumrapan;
  String? sipmulak;
  String? krishiaaujar;
  String? rasayenikmal;
  String? pashupanchi;
  String? chadparba;
  String? aanne;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;
  SikxyaName? sikxyaName;

  FamilyExpensesModel(
      {this.id,
      this.samuhaId,
      this.khadhanna,
      this.lattakapada,
      this.sikxyaId,
      this.aausadi,
      this.masu,
      this.dhumrapan,
      this.sipmulak,
      this.krishiaaujar,
      this.rasayenikmal,
      this.pashupanchi,
      this.chadparba,
      this.aanne,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.samuhaName,
      this.sikxyaName});

  factory FamilyExpensesModel.fromJson(Map<String, dynamic> json) {
    return FamilyExpensesModel(
    id : json['id'],
    samuhaId : json['samuha_id'],
    khadhanna : json['khadhanna'],
    lattakapada : json['lattakapada'],
    sikxyaId : json['sikxya_id'],
    aausadi : json['aausadi'],
    masu : json['masu'],
    dhumrapan : json['dhumrapan'],
    sipmulak : json['sipmulak'],
    krishiaaujar : json['krishiaaujar'],
    rasayenikmal : json['rasayenikmal'],
    pashupanchi : json['pashupanchi'],
    chadparba : json['chadparba'],
    aanne : json['aanne'],
    kaifayat : json['kaifayat'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    samuhaName : json['samuha_name'] != null
        ? new SamuhaName.fromJson(json['samuha_name'])
        : null,
    sikxyaName : json['sikxya_name'] != null
        ? new SikxyaName.fromJson(json['sikxya_name'])
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

class SikxyaName {
  int? id;
  String? education;
  Null? createdAt;
  Null? updatedAt;

  SikxyaName({this.id, this.education, this.createdAt, this.updatedAt});

  factory SikxyaName.fromJson(Map<String, dynamic> json) {
    return SikxyaName(
    id : json['id'],
    education : json['education'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}