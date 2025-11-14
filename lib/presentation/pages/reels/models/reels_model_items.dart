import 'package:instagram_clone/presentation/pages/reels/models/reels_model_content.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reels_model_items.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ReelsModelItems{
  @JsonKey(name: "userName")
  String? userName;
  @JsonKey(name: "userLogo")
  String? userLogo;
  @JsonKey(name: "follow")
  bool? follow;
   @JsonKey(name: "description")
  String? description;
   @JsonKey(name: "likeCount")
  String? likeCount;
   @JsonKey(name: "commentCount")
  String? commentCount;
   @JsonKey(name: "rePostCount")
  String? rePostCount;
   @JsonKey(name: "shareCount")
  String? shareCount;
   @JsonKey(name: "musicLogo")
  String? musicLogo;
  @JsonKey(name: "content")
  List<ReelsModelContent>? content;

  ReelsModelItems({
    this.userName,
    this.userLogo,
    this.follow,
    this.description,
    this.likeCount,
    this.commentCount,
    this.rePostCount,
    this.shareCount,
    this.musicLogo,
    this.content
  });

   factory ReelsModelItems.fromJson(Map<String, dynamic> json) {
    return _$ReelsModelItemsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReelsModelItemsToJson(this);

}