class GalleryModel {
  int? id;
  String? title;
  String? img;
  String? createdAt;
  String? updatedAt;

  GalleryModel({this.id, this.title, this.img, this.createdAt, this.updatedAt});

  factory GalleryModel.fromJson(Map<String, dynamic> json) {
    return GalleryModel(
    id : json['id'],
    title : json['title'],
    img : json['img'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}