// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TideUser _$TideUserFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['create_time']);
  return TideUser(
    json['id'] as String,
    json['name'] as String,
    json['username'] as String,
    DateTime.parse(json['create_time'] as String),
    avatarUri: json['avatar_uri'] as String,
    gender: _$enumDecode(_$GenderEnumMap, json['gender']),
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$TideUserToJson(TideUser instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'avatar_uri': instance.avatarUri,
      'create_time': instance.createTime.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender],
      'description': instance.description,
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

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.no_binary: 'no_binary',
  Gender.other: 'other',
  Gender.none: 'none',
};
