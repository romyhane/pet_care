import 'package:flutter/material.dart';

import '../core/constants.dart';

class PetAvatar extends StatelessWidget {
  const PetAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: AppSizes.avatarRadius,
      backgroundColor: AppColors.accent,
      child: Icon(
        Icons.pets,
        color: AppColors.onAccent,
        size: AppSizes.avatarIconSize,
      ),
    );
  }
}