import 'package:flutter/material.dart';
import 'models/pet_model.dart';
import 'screens/home_screen.dart';
import 'widgets/pet_avatar.dart';

void main() {
  runApp(const PetCareApp());
}

class PetCareApp extends StatelessWidget {
  const PetCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    // יצירת האובייקט של ליבי - כאן את האדריכלית של הנתונים!
    final libby = Pet(
      name: 'Libby',
      breed: 'Pitbull Mix',
      age: 3,
      weight: 25.0,
      gender: 'Girl',
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Care',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // כאן אנחנו אומרים לאפליקציה לפתוח את מסך הבית ולהעביר לו את ליבי
      home: HomeScreen(pet: libby),
    );
  }
}