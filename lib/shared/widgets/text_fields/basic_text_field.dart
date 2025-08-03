import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_dimens.dart';

class BasicTextField extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;

  const BasicTextField({
    super.key, this.hintText, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.surfaceAtElevation(context, 1),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppDimens.radiusLg)),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppDimens.radiusLg)),
          borderSide: BorderSide(color: AppColors.primarySwatch[200]!)
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.38)
        ),
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFB08C3E), // contoh warna gold
            borderRadius: BorderRadius.circular(AppDimens.radiusLg)
          ),
          padding: const EdgeInsets.all(8),
          child: Icon(suffixIcon, color: AppColors.primarySwatch[300], size: 20),
        ),
      ),
    );
  }
}