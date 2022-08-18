class FundManagementModel {
  int? id;
  String? samuhaId;
  String? rinSankha;
  String? rinRakam;
  String? aasuleGarnekoSankha;
  String? jammaAasuliRakam;
  String? bajAasuliGarnekoSankha;
  String? jammaBaj;
  String? hajanaDinkoSankha;
  String? hajanaRakam;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;

  FundManagementModel(
      {this.id,
      this.samuhaId,
      this.rinSankha,
      this.rinRakam,
      this.aasuleGarnekoSankha,
      this.jammaAasuliRakam,
      this.bajAasuliGarnekoSankha,
      this.jammaBaj,
      this.hajanaDinkoSankha,
      this.hajanaRakam,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.samuhaName});

  factory FundManagementModel.fromJson(Map<String, dynamic> json) {
    return FundManagementModel(
    id : json['id'],
    samuhaId : json['samuha_id'],
    rinSankha : json['rin_sankha'],
    rinRakam : json['rin_rakam'],
    aasuleGarnekoSankha : json['aasule_garneko_sankha'],
    jammaAasuliRakam : json['jamma_aasuli_rakam'],
    bajAasuliGarnekoSankha : json['baj_aasuli_garneko_sankha'],
    jammaBaj : json['jamma_baj'],
    hajanaDinkoSankha : json['hajana_dinko_sankha'],
    hajanaRakam : json['hajana_rakam'],
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