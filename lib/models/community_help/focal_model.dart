class FocalModel {
  int? id;
  String? samuhaId;
  String? focalparsion;
  String? karyeBibarand;
  String? sahabhagiSankha;
  String? mitiDekhi;
  String? mitiSamma;
  String? lachitBarga;
  String? labhanbitSankha;
  String? pragatiUannati;
  String? sahayogiNikaye;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;
  Focalparson? focalparson;

  FocalModel(
      {this.id,
      this.samuhaId,
      this.focalparsion,
      this.karyeBibarand,
      this.sahabhagiSankha,
      this.mitiDekhi,
      this.mitiSamma,
      this.lachitBarga,
      this.labhanbitSankha,
      this.pragatiUannati,
      this.sahayogiNikaye,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.samuhaName,
      this.focalparson});

  factory FocalModel.fromJson(Map<String, dynamic> json) {
    return FocalModel(
    id : json['id'],
    samuhaId : json['samuha_id'],
    focalparsion : json['focalparsion'],
    karyeBibarand : json['karye_bibarand'],
    sahabhagiSankha : json['sahabhagi_sankha'],
    mitiDekhi : json['miti_dekhi'],
    mitiSamma : json['miti_samma'],
    lachitBarga : json['lachit_barga'],
    labhanbitSankha : json['labhanbit_sankha'],
    pragatiUannati : json['pragati_uannati'],
    sahayogiNikaye : json['sahayogi_nikaye'],
    kaifayat : json['kaifayat'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    samuhaName : json['samuha_name'] != null
        ? new SamuhaName.fromJson(json['samuha_name'])
        : null,
    focalparson : json['focalparson'] != null
        ? new Focalparson.fromJson(json['focalparson'])
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

class Focalparson {
  int? id;
  String? focalparsion;


  Focalparson({this.id, this.focalparsion,});

  factory Focalparson.fromJson(Map<String, dynamic> json) {
    return Focalparson(
    id : json['id'],
    focalparsion : json['focalparsion'],
);
  }

}