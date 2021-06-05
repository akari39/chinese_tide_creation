import 'package:chinese_tide_creation/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'image.dart';

part 'feed.g.dart';

enum FeedType{
  short,
  article,
  activity
}

@JsonSerializable()
class TideFeed {
  @JsonKey(required: true)
  String id;

  @JsonKey(required: true)
  String title;

  @JsonKey(required: true, name: "short_content")
  String shortContent;

  @JsonKey(required: true, name: "feed_type")
  FeedType feedType;

  @JsonKey(required: true, name: "tide_user")
  TideUser tideUser;

  @JsonKey(required: true, name: "create_time")
  DateTime createTime;

  @JsonKey(required: true, name: "like_count")
  int likeCount;

  @JsonKey(required: true, name: "comment_count")
  int commentCount;

  @JsonKey(required: true, name: "collected")
  bool collected;

  @JsonKey(name: "preview_images")
  List<TideImage> previewImages;

  TideFeed(this.id, this.title, this.shortContent, this.feedType, this.tideUser, this.createTime, this.likeCount, this.commentCount, this.collected, {required this.previewImages});

  factory TideFeed.fromJson(Map<String, dynamic> json) => _$TideFeedFromJson(json);

  Map<String, dynamic> toJson() => _$TideFeedToJson(this);

  static List<TideFeed> test(){
    return [
      TideFeed(
          "0",
          "十二花神：走进花神的世界，跟百花一起享受四季（上)",
          "在百花的传说中，以农历中的十二个月令的代表花，于是十二月令花神的传说最令人神往。十二花神是中国民间传说，农历二月十二是百花的生日，人们称之为花朝节，因此中国民间便有一个花朝之庆。今天，跟着小韵一起走进花神的世界吧。",
          FeedType.article,
          TideUser.test(),
          DateTime.parse("2021-01-01 19:19:00"),
          1,
          20,
          false,
          previewImages: [
            TideImage("0", "https://mmbiz.qpic.cn/mmbiz_jpg/ias3XiaaQCoFtL6eZT8U9YuPvjaThBEbvlPOibTK85zwpEhTQcDwhFNyc4hOIxmTEpDXAcOFOwMjxK08cr338SzdA/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1")
          ]),
      TideFeed(
          "1",
          "藏在博物馆里的女神们",
          "春风十里，不如有你。今天是女神节，我们一起穿越时空，致敬藏在博物馆里的女神们！",
          FeedType.short,
          TideUser.test(),
          DateTime.parse("2021-01-01 19:18:00"),
          1,
          20,
          false,
          previewImages: [
            TideImage("1", "https://mmbiz.qpic.cn/mmbiz_jpg/n4wPHI6cL7vGZeyDyFUQgCh3UYY7fqAkJOzhgvNpVA5BmZ7DcJtiaAxUwiaJ96tnbNKnkADCIib2PrIY6fZ05EO9g/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
            TideImage("2", "https://mmbiz.qpic.cn/mmbiz_jpg/n4wPHI6cL7s1W0aibGUCyicQS3YZZ6qamTVv2jwuajdKhv49mfo8iazDtzapKRbH5S8weoSibVYx0icmj1GyiaKuaPtw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
            TideImage("3", "https://mmbiz.qpic.cn/mmbiz_jpg/n4wPHI6cL7s1W0aibGUCyicQS3YZZ6qamTVv2jwuajdKhv49mfo8iazDtzapKRbH5S8weoSibVYx0icmj1GyiaKuaPtw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
          ]),
      TideFeed(
          "2",
          "华夏祖先美与智慧的结晶——中国传统纹样图鉴（上）",
          "中华文化博大精深，源远流长，华夏民族的想象力与浪漫情怀好像是与生俱来的",
          FeedType.activity,
          TideUser.test(),
          DateTime.parse("2021-01-01 19:17:00"),
          1,
          20,
          false,
          previewImages: [
            TideImage("3", "https://mmbiz.qpic.cn/mmbiz_png/ias3XiaaQCoFvBxOX3BbSY8G4ZSscRiaSpll1ibZKbZ8gzibD327yesicXV86QYFCUl8S8jpVcVcm4vQapFH7VvaUiaJA/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
          ]),
    ];
  }

}