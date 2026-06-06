import 'package:flutter/material.dart';
import '../models/pet.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  final VoidCallback onTap;

  const PetCard({required this.pet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(pet.image, width: 60, fit: BoxFit.cover),
        title: Text(pet.name),
        subtitle: Text(pet.age),
        onTap: onTap,
      ),
    );
  }
}