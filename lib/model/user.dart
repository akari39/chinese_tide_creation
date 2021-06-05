import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

enum Gender{
  male,
  female,
  no_binary,
  other,
  none
}

extension on String {
  Gender toGender() {
    Gender gender;
    switch(this){
      case "male": gender = Gender.male; break;
      case "female": gender = Gender.female; break;
      case "no_binary": gender = Gender.no_binary; break;
      case "other": gender = Gender.other; break;
      default: gender = Gender.none; break;
    }
    return gender;
  }
}

@JsonSerializable()
class TideUser {
  late final String id;

  late final String name;

  late final String username;

  @JsonKey(name: "avatar_uri")
  late final String avatarUri;

  @JsonKey(required: true, name: "create_time")
  late final DateTime createTime;

  late final Gender gender;

  late final String description;

  TideUser(this.id, this.name, this.username, this.createTime, {required this.avatarUri, required this.gender, required this.description});

  TideUser.test() {
    id="0";
    name="我潮国韵平台";
    username="ctc_official";
    avatarUri="http://wx.qlogo.cn/mmhead/Q3auHgzwzM6YaCcmDzfTicoBTTDuaVOiaDHRUaUvWicMbVKe8e3y3ttUA/0";
    createTime=DateTime.parse("1970-01-01 00:00:00");
    gender=Gender.none;
    description="我潮国韵官方账号";
  }

  factory TideUser.fromJson(Map<String, dynamic> json) => _$TideUserFromJson(json);

  Map<String, dynamic> toJson() => _$TideUserToJson(this);

}