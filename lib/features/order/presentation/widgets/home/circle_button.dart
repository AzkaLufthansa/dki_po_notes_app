import 'package:flutter/material.dart';

import '../../../../../shared/theme/app_colors.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;

  const CircleButton({
    super.key,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            AppColors.primarySwatch[500]!,
            AppColors.primarySwatch[900]!,
          ],
        ),
      ),
      child: RawMaterialButton(
        onPressed: onTap,
        shape: const CircleBorder(),
        constraints: const BoxConstraints.tightFor(
          width: 48,
          height: 48,
        ),
        elevation: 0,
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
