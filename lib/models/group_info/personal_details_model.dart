class PersonalDetailsModel {
  int? id;
  String? samuhaDetailId;
  String? pariwarSankya;
  String? sikxyaId;
  String? janmaMiti;
  String? nagritaNum;
  String? jatiId;
  String? dharmaId;
  String? peshaId;
  String? jagga;
  String? pashuId;
  String? aarthikId;
  String? createdAt;
  String? updatedAt;
  String? samhumaSadakcheName;
  SamuhaName? samuhaName;
  AarthikName? aarthikName;
  DharmaName? dharmaName;
  JatiName? jatiName;
  PashuName? pashuName;
  PeshaName? peshaName;
  SikxyaName? sikxyaName;

  PersonalDetailsModel(
      {this.id,
      this.samuhaDetailId,
      this.pariwarSankya,
      this.sikxyaId,
      this.janmaMiti,
      this.nagritaNum,
      this.jatiId,
      this.dharmaId,
      this.peshaId,
      this.jagga,
      this.pashuId,
      this.aarthikId,
      this.createdAt,
      this.updatedAt,
      this.samhumaSadakcheName,
      this.samuhaName,
      this.aarthikName,
      this.dharmaName,
      this.jatiName,
      this.pashuName,
      this.peshaName,
      this.sikxyaName});

  factory PersonalDetailsModel.fromJson(Map<String, dynamic> json) {
    return PersonalDetailsModel(
    id : json['id'],
    samuhaDetailId : json['samuha_detail_id'],
    pariwarSankya : json['pariwar_sankya'],
    sikxyaId : json['sikxya_id'],
    janmaMiti : json['janma_miti'],
    nagritaNum : json['nagrita_num'],
    jatiId : json['jati_id'],
    dharmaId : json['dharma_id'],
    peshaId : json['pesha_id'],
    jagga : json['jagga'],
    pashuId : json['pashu_id'],
    aarthikId : json['aarthik_id'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    samhumaSadakcheName : json['samhuma_sadakche_name'],
    samuhaName : json['samuha_name'] != null
        ? new SamuhaName.fromJson(json['samuha_name'])
        : null,
    aarthikName : json['aarthik_name'] != null
        ? new AarthikName.fromJson(json['aarthik_name'])
        : null,
    dharmaName : json['dharma_name'] != null
        ? new DharmaName.fromJson(json['dharma_name'])
        : null,
    jatiName : json['jati_name'] != null
        ? new JatiName.fromJson(json['jati_name'])
        : null,
    pashuName : json['pashu_name'] != null
        ? new PashuName.fromJson(json['pashu_name'])
        : null,
    peshaName : json['pesha_name'] != null
        ? new PeshaName.fromJson(json['pesha_name'])
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

class AarthikName {
  int? id;
  String? finanancialStatus;
  Null? createdAt;
  Null? updatedAt;

  AarthikName(
      {this.id, this.finanancialStatus, this.createdAt, this.updatedAt});

  factory AarthikName.fromJson(Map<String, dynamic> json) {
    return AarthikName(
    id : json['id'],
    finanancialStatus : json['finanancial_status'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}

class DharmaName {
  int? id;
  String? religion;
  Null? createdAt;
  Null? updatedAt;

  DharmaName({this.id, this.religion, this.createdAt, this.updatedAt});

  factory DharmaName.fromJson(Map<String, dynamic> json) {
    return DharmaName(
    id : json['id'],
    religion : json['religion'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }


}

class JatiName {
  int? id;
  String? caste;
  Null? createdAt;
  Null? updatedAt;

  JatiName({this.id, this.caste, this.createdAt, this.updatedAt});

  factory JatiName.fromJson(Map<String, dynamic> json) {
    return JatiName(
    id : json['id'],
    caste : json['caste'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}

class PashuName {
  int? id;
  String? animal;
  Null? createdAt;
  Null? updatedAt;

  PashuName({this.id, this.animal, this.createdAt, this.updatedAt});

  factory PashuName.fromJson(Map<String, dynamic> json) {
    return PashuName(
    id : json['id'],
    animal : json['Animal'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}

class PeshaName {
  int? id;
  String? occupation;
  Null? createdAt;
  Null? updatedAt;

  PeshaName({this.id, this.occupation, this.createdAt, this.updatedAt});

  factory PeshaName.fromJson(Map<String, dynamic> json) {
    return PeshaName(
    id : json['id'],
    occupation : json['Occupation'],
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