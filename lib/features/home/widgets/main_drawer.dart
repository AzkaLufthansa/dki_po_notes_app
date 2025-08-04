import 'package:flutter/material.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_dimens.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.surfaceAtElevation(context, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.spacingContainer
            ),
            child: Image.asset(
              'assets/images/app_logo_horizontal.png',
              width: MediaQuery.of(context).size.width * 0.35,
            ),
          ),
    
          Divider(
            height: 1, 
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
          ),

          const SizedBox(height: AppDimens.spacingContainer,),

          DrawerMenuItem(
            icon: Icons.fastfood_rounded, 
            title: 'Menu'
          ),

          const SizedBox(height: 15.0,),

          DrawerMenuItem(
            icon: Icons.people_rounded, 
            title: 'Grup'
          ),
          
          const SizedBox(height: 15.0,),

          DrawerMenuItem(
            icon: Icons.calendar_month_rounded, 
            title: 'Tanggal PO'
          ),
        ],
      )
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const DrawerMenuItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.spacingContainer
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Icon
          Icon(
            icon, 
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
          ),

          const SizedBox(width: AppDimens.spacingBetweenComponent,),
      
          // title
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
            )
          )
        ],
      ),
    );
  }
}