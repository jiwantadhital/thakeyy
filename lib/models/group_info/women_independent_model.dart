class WomenDModel {
  int? id;
  String? samuhakoName;
  String? krishiName;
  String? krishiPhone;
  String? pashupalanName;
  String? pashupalanPhone;
  String? sikaKhelkudName;
  String? sikaKhelkudPhone;
  String? khaSuswaPosandName;
  String? khaSuswaPosandPhone;
  String? bipadBataSarName;
  String? bipadBataSarPhone;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;

  WomenDModel(
      {this.id,
      this.samuhakoName,
      this.krishiName,
      this.krishiPhone,
      this.pashupalanName,
      this.pashupalanPhone,
      this.sikaKhelkudName,
      this.sikaKhelkudPhone,
      this.khaSuswaPosandName,
      this.khaSuswaPosandPhone,
      this.bipadBataSarName,
      this.bipadBataSarPhone,
      this.createdAt,
      this.updatedAt,
      this.samuhaName});

  factory WomenDModel.fromJson(Map<String, dynamic> json) {
    return WomenDModel(
    id : json['id'],
    samuhakoName : json['samuhako_name'],
    krishiName : json['krishi_name'],
    krishiPhone : json['krishi_phone'],
    pashupalanName : json['pashupalan_name'],
    pashupalanPhone : json['pashupalan_phone'],
    sikaKhelkudName : json['sika_khelkud_name'],
    sikaKhelkudPhone : json['sika_khelkud_phone'],
    khaSuswaPosandName : json['kha_suswa_posand_name'],
    khaSuswaPosandPhone : json['kha_suswa_posand_phone'],
    bipadBataSarName : json['bipad_bata_sar_name'],
    bipadBataSarPhone : json['bipad_bata_sar_phone'],
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