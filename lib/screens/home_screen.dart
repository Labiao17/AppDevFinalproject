import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../screens/pet_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Pet> pets = [
    Pet(
      name: "Brownie",
      image: "https://place-puppy.com/400x400",
      description: "Friendly and playful dog",
      age: "2 years",
    ),
    Pet(
      name: "Mittens",
      image: "https://placekitten.com/400/400",
      description: "Calm indoor cat",
      age: "1 year",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🐾 PawRescue"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HEADER SECTION
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Find your new best friend ❤️",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // GRID
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: pets.length,
              itemBuilder: (context, index) {
                final pet = pets[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PetDetailScreen(pet: pet),
                      ),
                    );
                  },
                  child: PetCard(pet: pet),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// BEAUTIFUL CARD
class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.network(
              pet.image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pet.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text("Age: ${pet.age}",
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("Adopt Me"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}