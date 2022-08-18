class SliderModel {
  int? id;
  String? title;
  String? img;
  String? status;
  String? createdAt;
  String? updatedAt;

  SliderModel(
      {this.id,
      this.title,
      this.img,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
    id : json['id'],
    title : json['title'],
    img : json['img'],
    status : json['status'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}