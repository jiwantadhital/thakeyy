class BlogModel {
  int? id;
  String? title;
  String? newsDesc;
  String? file;
  String? createdAt;
  String? updatedAt;

  BlogModel(
      {this.id,
      this.title,
      this.newsDesc,
      this.file,
      this.createdAt,
      this.updatedAt});

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
    id : json['id'],
    title : json['title'],
    newsDesc : json['news_desc'],
    file : json['file'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}