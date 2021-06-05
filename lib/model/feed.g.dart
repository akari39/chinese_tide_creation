// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TideFeed _$TideFeedFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'id',
    'title',
    'short_content',
    'feed_type',
    'tide_user',
    'create_time',
    'like_count',
    'comment_count',
    'collected'
  ]);
  return TideFeed(
    json['id'] as String,
    json['title'] as String,
    json['short_content'] as String,
    _$enumDecode(_$FeedTypeEnumMap, json['feed_type']),
    TideUser.fromJson(json['tide_user'] as Map<String, dynamic>),
    DateTime.parse(json['create_time'] as String),
    json['like_count'] as int,
    json['comment_count'] as int,
    json['collected'] as bool,
    previewImages: (json['preview_images'] as List<dynamic>)
        .map((e) => TideImage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TideFeedToJson(TideFeed instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_content': instance.shortContent,
      'feed_type': _$FeedTypeEnumMap[instance.feedType],
      'tide_user': instance.tideUser,
      'create_time': instance.createTime.toIso8601String(),
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
      'collected': instance.collected,
      'preview_images': instance.previewImages,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$FeedTypeEnumMap = {
  FeedType.short: 'short',
  FeedType.article: 'article',
  FeedType.activity: 'activity',
};
