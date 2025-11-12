import 'package:json_annotation/json_annotation.dart';

part 'stories_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class StoriesModel {
  @JsonKey(name: "userName")
  String? userName;
  @JsonKey(name: "userLogo")
  String? userLogo;

  StoriesModel({
    this.userName,
    this.userLogo,
  });

   factory StoriesModel.fromJson(Map<String, dynamic> json) {
    return _$StoriesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StoriesModelToJson(this);

}