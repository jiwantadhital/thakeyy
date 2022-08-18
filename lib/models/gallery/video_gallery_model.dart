class VideoModel {
  int? id;
  String? title;
  Null? video;
  String? videoLink;
  String? createdAt;
  String? updatedAt;

  VideoModel(
      {this.id,
      this.title,
      this.video,
      this.videoLink,
      this.createdAt,
      this.updatedAt});

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
    id : json['id'],
    title : json['title'],
    video : json['video'],
    videoLink : json['video_link'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}