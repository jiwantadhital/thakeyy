class FamilyDetailsModel {
  int? id;
  String? personaldetailId;
  String? pariwarikSadakcheName;
  String? nata;
  String? sikxyaId;
  String? janmaMiti;
  String? nagritaNumber;
  String? jatiId;
  String? dharmaId;
  String? peshaId;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  DharmaName? dharmaName;
  JatiName? jatiName;
  PeshaName? peshaName;
  SikxyaName? sikxyaName;
  Personal? personal;

  FamilyDetailsModel(
      {this.id,
      this.personaldetailId,
      this.pariwarikSadakcheName,
      this.nata,
      this.sikxyaId,
      this.janmaMiti,
      this.nagritaNumber,
      this.jatiId,
      this.dharmaId,
      this.peshaId,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.dharmaName,
      this.jatiName,
      this.peshaName,
      this.sikxyaName,
      this.personal});

  factory FamilyDetailsModel.fromJson(Map<String, dynamic> json) {
    return FamilyDetailsModel(
    id : json['id'],
    personaldetailId : json['personaldetail_id'],
    pariwarikSadakcheName : json['pariwarik_sadakche_name'],
    nata : json['nata'],
    sikxyaId : json['sikxya_id'],
    janmaMiti : json['janma_miti'],
    nagritaNumber : json['nagrita_number'],
    jatiId : json['jati_id'],
    dharmaId : json['dharma_id'],
    peshaId : json['pesha_id'],
    kaifayat : json['kaifayat'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    dharmaName : json['dharma_name'] != null
        ? new DharmaName.fromJson(json['dharma_name'])
        : null,
    jatiName : json['jati_name'] != null
        ? new JatiName.fromJson(json['jati_name'])
        : null,
    peshaName : json['pesha_name'] != null
        ? new PeshaName.fromJson(json['pesha_name'])
        : null,
    sikxyaName : json['sikxya_name'] != null
        ? new SikxyaName.fromJson(json['sikxya_name'])
        : null,
    personal : json['personal'] != null
        ? new Personal.fromJson(json['personal'])
        : null,
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

class Personal {
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

  Personal(
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
      this.samhumaSadakcheName});

 factory Personal.fromJson(Map<String, dynamic> json) {
  return Personal(
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
    );
  }

}