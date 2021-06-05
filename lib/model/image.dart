import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class TideImage {
  String id;
  String uri;

  TideImage(this.id, this.uri);

  factory TideImage.fromJson(Map<String, dynamic> json) => _$TideImageFromJson(json);

  Map<String, dynamic> toJson() => _$TideImageToJson(this);
}