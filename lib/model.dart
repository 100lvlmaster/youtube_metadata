part of './youtube.dart';

/// Data model to serialize youtube data
class MetaDataModel {
  MetaDataModel({
    required this.title,
    required this.authorName,
    required this.authorUrl,
    required this.type,
    required this.height,
    required this.width,
    required this.version,
    required this.providerName,
    required this.providerUrl,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
    required this.thumbnailUrl,
    required this.html,
    required this.url,
    required this.description,
  });

  final String? title;
  final String? authorName;
  final String? authorUrl;
  final String? type;
  final int? height;
  final int? width;
  final String? version;
  final String? providerName;
  final String? providerUrl;
  final int? thumbnailHeight;
  final int? thumbnailWidth;
  final String? thumbnailUrl;
  final String? html;
  final String? url;
  final String? description;

  factory MetaDataModel.fromMap(Map<String, dynamic> json) => MetaDataModel(
        title: json["title"] == null ? null : json["title"],
        authorName: json["author_name"] == null ? null : json["author_name"],
        authorUrl: json["author_url"] == null ? null : json["author_url"],
        type: json["type"] == null ? null : json["type"],
        height: json["height"] == null ? null : json["height"],
        width: json["width"] == null ? null : json["width"],
        version: json["version"] == null ? null : json["version"],
        providerName:
            json["provider_name"] == null ? null : json["provider_name"],
        providerUrl: json["provider_url"] == null ? null : json["provider_url"],
        thumbnailHeight:
            json["thumbnail_height"] == null ? null : json["thumbnail_height"],
        thumbnailWidth:
            json["thumbnail_width"] == null ? null : json["thumbnail_width"],
        thumbnailUrl:
            json["thumbnail_url"] == null ? null : json["thumbnail_url"],
        html: json["html"] == null ? null : json["html"],
        url: json["url"] == null ? null : json["url"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "author_name": authorName == null ? null : authorName,
        "author_url": authorUrl == null ? null : authorUrl,
        "type": type == null ? null : type,
        "height": height == null ? null : height,
        "width": width == null ? null : width,
        "version": version == null ? null : version,
        "provider_name": providerName == null ? null : providerName,
        "provider_url": providerUrl == null ? null : providerUrl,
        "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
        "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
        "thumbnail_url": thumbnailUrl == null ? null : thumbnailUrl,
        "html": html == null ? null : html,
        "url": url == null ? null : url,
        "description": description == null ? null : description,
      };
}
