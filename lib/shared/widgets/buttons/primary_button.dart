import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_dimens.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;

  const PrimaryButton({
    super.key, 
    this.onTap, 
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.spacingContainer,
          vertical: 10
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primarySwatch[500]!,
              AppColors.primarySwatch[900]!,
            ]
          ),
          borderRadius: BorderRadius.circular(AppDimens.radiusLg)
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary
          ),
        ),
      ),
    );
  }
}