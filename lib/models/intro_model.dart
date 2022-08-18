class IntroModel {
  int? id;
  String? title;
  String? desc;
  String? img;
  String? createdAt;
  String? updatedAt;

  IntroModel(
      {this.id,
      this.title,
      this.desc,
      this.img,
      this.createdAt,
      this.updatedAt});

  factory IntroModel.fromJson(Map<String, dynamic> json) {
    return IntroModel(
    id : json['id'],
    title : json['title'],
    desc : json['desc'],
    img : json['img'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}