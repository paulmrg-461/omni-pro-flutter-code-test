import 'dart:convert';

import 'package:omnipro_flutter_code_test/domain/entities/photo.dart';

JsonplaceholderPhotoModel jsonplaceholderPhotoModelFromJson(String str) =>
    JsonplaceholderPhotoModel.fromJson(json.decode(str));

String jsonplaceholderPhotoModelToJson(JsonplaceholderPhotoModel data) =>
    json.encode(data.toJson());

class JsonplaceholderPhotoModel extends Photo {
  final int albumId;

  JsonplaceholderPhotoModel({
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
    required this.albumId,
  }) : super(id: id, title: title, url: url, thumbnailUrl: thumbnailUrl);

  factory JsonplaceholderPhotoModel.fromJson(Map<String, dynamic> json) =>
      JsonplaceholderPhotoModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
