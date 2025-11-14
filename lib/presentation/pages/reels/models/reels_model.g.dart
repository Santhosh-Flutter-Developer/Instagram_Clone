// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReelsModel _$ReelsModelFromJson(Map<String, dynamic> json) => ReelsModel(
      title: json['title'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ReelsModelItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReelsModelToJson(ReelsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };
