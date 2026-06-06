import 'package:flutter/material.dart';
import '../models/pet.dart';

class PetDetailScreen extends StatelessWidget {
  final Pet pet;

  const PetDetailScreen({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                pet.image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: BackButton(color: Colors.black),
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pet.name,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Age: ${pet.age}",
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 20),
                  Text(
                    pet.description,
                    style: TextStyle(fontSize: 16),
                  ),

                  Spacer(),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Adopt Me ❤️"),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}