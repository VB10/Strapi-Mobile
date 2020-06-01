import 'package:json_annotation/json_annotation.dart';
import 'package:strapipet/pet_store/model/base_model.dart';

part 'pet_model.g.dart';

@JsonSerializable()
class PetModel extends BaseModel {
  int id;
  String name;
  String description;
  int age;
  PetPhoto photo;

  PetModel({
    this.id,
    this.name,
    this.description,
    this.age,
    this.photo,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);
  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}

@JsonSerializable()
class PetPhoto extends BaseModel {
  String url;
  PetPhoto({
    this.url,
  });

  factory PetPhoto.fromJson(Map<String, dynamic> json) =>
      _$PetPhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PetPhotoToJson(this);
}
