import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  
  const CustomFAB({
    super.key, this.onTap, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            AppColors.primarySwatch[500]!,
            AppColors.primarySwatch[900]!,
          ]
        )
      ),
      child: RawMaterialButton(
        onPressed: onTap,
        shape: const CircleBorder(),
        child: Icon(icon, color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}