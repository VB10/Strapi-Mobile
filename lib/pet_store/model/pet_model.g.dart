// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) {
  return PetModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    age: json['age'] as int,
    photo: json['photo'] == null
        ? null
        : PetPhoto.fromJson(json['photo'] as Map<String, dynamic>),
  )
    ..createDate = json['created_at'] as String
    ..updateDate = json['updated_at'] as String;
}

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
      'created_at': instance.createDate,
      'updated_at': instance.updateDate,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'age': instance.age,
      'photo': instance.photo,
    };

PetPhoto _$PetPhotoFromJson(Map<String, dynamic> json) {
  return PetPhoto(
    url: json['url'] as String,
  )
    ..createDate = json['created_at'] as String
    ..updateDate = json['updated_at'] as String;
}

Map<String, dynamic> _$PetPhotoToJson(PetPhoto instance) => <String, dynamic>{
      'created_at': instance.createDate,
      'updated_at': instance.updateDate,
      'url': instance.url,
    };
