class FamilyEarningModel {
  int? id;
  String? samuhaId;
  String? memberName;
  String? tarkari;
  String? aanabali;
  String? gaiNo;
  String? baiseNo;
  String? goruNo;
  String? aanneNo;
  String? bakhra;
  String? kukhura;
  String? business;
  String? ka;
  String? kha;
  String? ga;
  String? jagir;
  String? pension;
  String? aane;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;

  FamilyEarningModel(
      {this.id,
      this.samuhaId,
      this.memberName,
      this.tarkari,
      this.aanabali,
      this.gaiNo,
      this.baiseNo,
      this.goruNo,
      this.aanneNo,
      this.bakhra,
      this.kukhura,
      this.business,
      this.ka,
      this.kha,
      this.ga,
      this.jagir,
      this.pension,
      this.aane,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.samuhaName});

  factory FamilyEarningModel.fromJson(Map<String, dynamic> json) {
    return FamilyEarningModel(
    id : json['id'],
    samuhaId : json['samuha_id'],
    memberName : json['member_name'],
    tarkari : json['tarkari'],
    aanabali : json['aanabali'],
    gaiNo : json['gai_no'],
    baiseNo : json['baise_no'],
    goruNo : json['goru_no'],
    aanneNo : json['aanne_no'],
    bakhra : json['bakhra'],
    kukhura : json['kukhura'],
    business : json['business'],
    ka : json['ka'],
    kha : json['kha'],
    ga : json['ga'],
    jagir : json['jagir'],
    pension : json['pension'],
    aane : json['aane'],
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
    id : json['id'] ?? '',
    wardNo : json['ward_no'] ?? '',
    samuhakoName : json['samuhako_name'] ?? '',
    tol : json['tol'] ?? '',
    samuhaSadaksheSankha : json['samuha_sadakshe_sankha'] ?? '',
    aadakcheName : json['aadakche_name'] ?? '',
    aadakchePhone : json['aadakche_phone'] ?? '',
    sachibName : json['sachib_name'] ?? '',
    sachibPhone : json['sachib_phone'] ?? '',
    kosadakcheName : json['kosadakche_name'] ?? '',
    kosadakchePhone : json['kosadakche_phone'] ?? '',
    niyemitBaithak : json['niyemit_baithak'] ?? '',
    bachatDar : json['bachat_dar'] ?? '',
    baajPratisad : json['baaj_pratisad'] ?? '',
    kaifiyat : json['kaifiyat'] ?? '',
    createdAt : json['created_at'] ?? '',
    updatedAt : json['updated_at'] ?? '',
    );
  }

}