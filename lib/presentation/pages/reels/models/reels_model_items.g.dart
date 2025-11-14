// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_model_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReelsModelItems _$ReelsModelItemsFromJson(Map<String, dynamic> json) =>
    ReelsModelItems(
      userName: json['userName'] as String?,
      userLogo: json['userLogo'] as String?,
      follow: json['follow'] as bool?,
      description: json['description'] as String?,
      likeCount: json['likeCount'] as String?,
      commentCount: json['commentCount'] as String?,
      rePostCount: json['rePostCount'] as String?,
      shareCount: json['shareCount'] as String?,
      musicLogo: json['musicLogo'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ReelsModelContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReelsModelItemsToJson(ReelsModelItems instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userLogo': instance.userLogo,
      'follow': instance.follow,
      'description': instance.description,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'rePostCount': instance.rePostCount,
      'shareCount': instance.shareCount,
      'musicLogo': instance.musicLogo,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };
