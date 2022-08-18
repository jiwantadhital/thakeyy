class SocialWorkModel {
  int? id;
  String? samhuaId;
  String? kamkoBibarand;
  String? sahabhagiSankha;
  String? mitiDekhi;
  String? mitiSamma;
  String? lichitBarga;
  String? labhandita;
  String? pragati;
  String? kaifayat;
  String? createdAt;
  String? updatedAt;
  SamuhaName? samuhaName;

  SocialWorkModel(
      {this.id,
      this.samhuaId,
      this.kamkoBibarand,
      this.sahabhagiSankha,
      this.mitiDekhi,
      this.mitiSamma,
      this.lichitBarga,
      this.labhandita,
      this.pragati,
      this.kaifayat,
      this.createdAt,
      this.updatedAt,
      this.samuhaName});

  factory SocialWorkModel.fromJson(Map<String, dynamic> json) {
    return SocialWorkModel(
    id : json['id'],
    samhuaId : json['samhua_id'],
    kamkoBibarand : json['kamko_bibarand'],
    sahabhagiSankha : json['sahabhagi_sankha'],
    mitiDekhi : json['miti_dekhi'],
    mitiSamma : json['miti_samma'],
    lichitBarga : json['lichit_barga'],
    labhandita : json['labhandita'],
    pragati : json['pragati'],
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