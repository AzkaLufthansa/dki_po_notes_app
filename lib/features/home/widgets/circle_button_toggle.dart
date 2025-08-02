import 'package:flutter/material.dart';

import '../../../shared/theme/app_colors.dart';

class CircleButtonToggle extends StatelessWidget {
  final Function(bool) onToggle;
  final IconData? icon;
  final bool isActive;

  const CircleButtonToggle({
    super.key,
    required this.isActive,
    this.icon,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: isActive
            ? LinearGradient(
                colors: [
                  AppColors.primarySwatch[500]!,
                  AppColors.primarySwatch[900]!,
                ],
              )
            : null,
        border: !isActive
            ? Border.all(color: AppColors.primarySwatch[500]!)
            : null,
      ),
      child: RawMaterialButton(
        onPressed: () => onToggle(isActive),
        shape: const CircleBorder(),
        constraints: const BoxConstraints.tightFor(
          width: 48,
          height: 48,
        ),
        elevation: 0,
        fillColor: Colors.transparent, // transparan agar gradient terlihat
        child: Icon(
          icon,
          color: isActive
              ? Theme.of(context).colorScheme.onPrimary
              : AppColors.primarySwatch[500],
        ),
      ),
    );
  }
}
