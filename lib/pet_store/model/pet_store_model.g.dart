// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetStoreModel _$PetStoreModelFromJson(Map<String, dynamic> json) {
  return PetStoreModel(
    id: json['id'] as int,
    name: json['name'] as String,
    pets: (json['pets'] as List)
        ?.map((e) =>
            e == null ? null : PetModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..createDate = json['created_at'] as String
    ..updateDate = json['updated_at'] as String;
}

Map<String, dynamic> _$PetStoreModelToJson(PetStoreModel instance) =>
    <String, dynamic>{
      'created_at': instance.createDate,
      'updated_at': instance.updateDate,
      'id': instance.id,
      'name': instance.name,
      'pets': instance.pets,
    };
