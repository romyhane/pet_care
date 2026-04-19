import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../models/pet_model.dart';
import '../widgets/pet_avatar.dart';

class HomeScreen extends StatelessWidget {
  final Pet pet;

  const HomeScreen({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.accent,
              ),
              child: Text(
                AppStrings.menu,
                style: TextStyle(
                  color: AppColors.onAccent,
                  fontSize: AppSizes.drawerHeaderFontSize,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text(AppStrings.myPets),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(AppStrings.family),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(AppStrings.settings),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PetAvatar(),
          const SizedBox(height: AppSizes.spacingAvatarToStatus),
          const Text(
            AppStrings.statusHungry,
            style: TextStyle(
              fontSize: AppSizes.statusFontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppSizes.spacingStatusToActions),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(AppStrings.feed),
              ),
              const SizedBox(width: AppSizes.spacingBetweenActions),
              ElevatedButton(
                onPressed: () {},
                child: const Text(AppStrings.walk),
              ),
            ],
          ),
        ],
      ),
    );
  }
}