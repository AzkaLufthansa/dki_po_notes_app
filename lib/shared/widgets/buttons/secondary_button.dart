import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_dimens.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;

  const SecondaryButton({
    super.key, 
    this.onTap, 
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceAtElevation(context, 12),
      borderRadius: BorderRadius.circular(AppDimens.radiusLg),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppDimens.radiusLg),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.spacingContainer,
            vertical: 10
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.radiusLg),
            border: Border.all(
              color: AppColors.primary
            ),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: AppColors.primary
            ),
          ),
        ),
      ),
    );
  }
}