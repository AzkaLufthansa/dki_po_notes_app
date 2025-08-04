import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  final bool disabled;
  
  const CustomFAB({
    super.key, this.onTap, this.icon, this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: disabled
          ? AppColors.surfaceAtElevation(context, 4)
          : null,
        gradient: !disabled 
          ? LinearGradient(
              colors: [
                AppColors.primarySwatch[500]!,
                AppColors.primarySwatch[900]!,
              ]
            )
          : null
      ),
      child: RawMaterialButton(
        onPressed: !disabled ? onTap : null,
        shape: const CircleBorder(),
        child: Icon(
          icon, 
          color: !disabled
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.onSurface.withOpacity(0.28)
        ),
      ),
    );
  }
}