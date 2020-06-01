import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:strapipet/pet_store/model/pet_model.dart';
import './pet_store_view_model.dart';

class PetStoreView extends PetStoreViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: isPetStoreEmpty
          ? buildCenterLoadingWidget()
          : buildListViewPetStore(),
    );
  }

  bool get isPetStoreEmpty => petStores.isEmpty;

  Center buildCenterLoadingWidget() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  ListView buildListViewPetStore() {
    return ListView.builder(
      itemCount: petStores.length,
      itemBuilder: (context, index) => buildListTilePetStoreCard(index),
    );
  }

  Widget buildListTilePetStoreCard(int index) {
    return ExpansionTile(
      title: Text(petStores[index].name),
      children: petStores[index].pets.map((e) => toPetCard(e)).toList(),
    );
  }

  Widget toPetCard(PetModel pet) {
    return Card(
      child: ListTile(
        onTap: () {
          showModalBottomSheet(
              context: context, builder: (context) => showDetailPetStore(pet));
        },
        title: Text(pet.name),
        subtitle: Text(pet.createDate),
        trailing: Icon(Icons.android),
      ),
    );
  }

  Widget showDetailPetStore(PetModel model) {
    return Column(
      children: [Expanded(child: MarkdownWidget(data: model.description))],
    );
  }
}
