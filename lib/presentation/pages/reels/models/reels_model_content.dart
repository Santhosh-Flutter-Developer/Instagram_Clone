import 'package:json_annotation/json_annotation.dart';

part 'reels_model_content.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ReelsModelContent{
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "type")
  String? type;

  ReelsModelContent({
    this.url,
    this.type,
  });

   factory ReelsModelContent.fromJson(Map<String, dynamic> json) {
    return _$ReelsModelContentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReelsModelContentToJson(this);

}


