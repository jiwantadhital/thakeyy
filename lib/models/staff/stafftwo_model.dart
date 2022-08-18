class StaffTwoModel {
  int? id;
  String? name;
  String? post;
  String? phone;
  String? email;
  String? image;
  String? category;
  String? createdAt;
  String? updatedAt;

  StaffTwoModel(
      {this.id,
      this.name,
      this.post,
      this.phone,
      this.email,
      this.image,
      this.category,
      this.createdAt,
      this.updatedAt});

  factory StaffTwoModel.fromJson(Map<String, dynamic> json) {
    return StaffTwoModel(
    id : json['id'],
    name : json['name'],
    post : json['post'],
    phone : json['phone'],
    email : json['email'],
    image : json['image'],
    category : json['category'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}