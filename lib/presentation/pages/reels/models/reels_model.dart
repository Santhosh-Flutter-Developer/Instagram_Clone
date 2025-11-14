import 'package:instagram_clone/presentation/pages/reels/models/reels_model_items.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reels_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ReelsModel{
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "items")
  List<ReelsModelItems>? items;

  ReelsModel({
    this.title,
    this.items,
  });

   factory ReelsModel.fromJson(Map<String, dynamic> json) {
    return _$ReelsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReelsModelToJson(this);

}


