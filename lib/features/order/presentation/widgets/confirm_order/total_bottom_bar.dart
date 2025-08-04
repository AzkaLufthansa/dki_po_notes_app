import 'package:flutter/material.dart';

import '../../../../../shared/theme/app_colors.dart';
import '../../../../../shared/theme/app_dimens.dart';
import '../../../../../shared/widgets/buttons/primary_button.dart';

class TotalBottomBar extends StatelessWidget {
  const TotalBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.spacingContainer,
          vertical: AppDimens.spacingContainer
        ),
        decoration: BoxDecoration(
          color: AppColors.surfaceAtElevation(context, 3),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppDimens.radiusLg)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)
                  ),
                ),
                Text(
                  'Rp. 8.000',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),

            PrimaryButton(
              onTap: () {},
              label: 'Konfirmasi',
            ),
          ],
        ),
      ),
    );
  }
}