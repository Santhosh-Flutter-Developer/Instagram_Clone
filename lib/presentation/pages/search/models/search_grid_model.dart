import 'package:json_annotation/json_annotation.dart';

part 'search_grid_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SearchGridModel {
  @JsonKey(name: "tileUrl")
  String? tileUrl;
  @JsonKey(name: "viewCount")
  String? viewCount;

  SearchGridModel({
    this.tileUrl,
    this.viewCount,
  });

   factory SearchGridModel.fromJson(Map<String, dynamic> json) {
    return _$SearchGridModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchGridModelToJson(this);

}