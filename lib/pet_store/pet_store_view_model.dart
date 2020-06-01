import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:strapipet/pet_store/model/pet_model.dart';
import 'package:strapipet/pet_store/model/pet_store_model.dart';
import './pet_store.dart';

abstract class PetStoreViewModel extends State<PetStore> {
  // Add your state and logic here

  Dio dio;

  List<PetStoreModel> petStores = [];

  String path = "pet-stores";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final options = BaseOptions(baseUrl: "http://localhost:1337/");
    dio = Dio(options);
    getPetStoreList();
  }

  Future<void> getPetStoreList() async {
    setState(() {});
    final response = await dio.get(path);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        if (responseBody is List) {
          petStores =
              responseBody.map((e) => PetStoreModel.fromJson(e)).toList();
        }
        break;
      default:
    }

    setState(() {});
  }
}
