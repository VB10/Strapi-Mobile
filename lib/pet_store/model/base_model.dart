import 'package:json_annotation/json_annotation.dart';

class BaseModel {
  @JsonKey(name: "created_at")
  String createDate;
  @JsonKey(name: "updated_at")
  String updateDate;
}
