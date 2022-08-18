class HelpDetailsModel {
  int? id;
  String? sahabhagi;
  String? programName;
  String? programAddress;
  String? nikayekoNam;
  String? talimDekhi;
  String? talimSamma;
  String? samayogNagat;
  String? sahoyogJeans;
  String? labhambigPariyar;
  String? lichitSamuha;
  String? pragati;
  String? kaifiyat;
  String? createdAt;
  String? updatedAt;
  String? samuhaId;
  SamuhaName? samuhaName;

  HelpDetailsModel(
      {this.id,
      this.sahabhagi,
      this.programName,
      this.programAddress,
      this.nikayekoNam,
      this.talimDekhi,
      this.talimSamma,
      this.samayogNagat,
      this.sahoyogJeans,
      this.labhambigPariyar,
      this.lichitSamuha,
      this.pragati,
      this.kaifiyat,
      this.createdAt,
      this.updatedAt,
      this.samuhaId,
      this.samuhaName});

  factory HelpDetailsModel.fromJson(Map<String, dynamic> json) {
    return HelpDetailsModel(
    id : json['id'],
    sahabhagi : json['sahabhagi'],
    programName : json['program_name'],
    programAddress : json['program_address'],
    nikayekoNam : json['nikayeko_nam'],
    talimDekhi : json['talim_dekhi'],
    talimSamma : json['talim_samma'],
    samayogNagat : json['samayog_nagat'],
    sahoyogJeans : json['sahoyog_jeans'],
    labhambigPariyar : json['labhambig_pariyar'],
    lichitSamuha : json['lichit_samuha'],
    pragati : json['pragati'],
    kaifiyat : json['kaifiyat'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    samuhaId : json['samuha_id'],
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