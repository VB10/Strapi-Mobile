import 'package:json_annotation/json_annotation.dart';

import 'base_model.dart';
import 'pet_model.dart';

part 'pet_store_model.g.dart';

@JsonSerializable()
class PetStoreModel extends BaseModel {
  int id;
  String name;
  List<PetModel> pets;
  PetStoreModel({
    this.id,
    this.name,
    this.pets,
  });

  factory PetStoreModel.fromJson(Map<String, dynamic> json) =>
      _$PetStoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$PetStoreModelToJson(this);
}
