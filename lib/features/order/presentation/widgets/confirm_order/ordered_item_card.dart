import 'package:flutter/material.dart';

import '../../../../../shared/theme/app_colors.dart';
import '../../../../../shared/theme/app_dimens.dart';

class OrderedItemCard extends StatelessWidget {
  final VoidCallback onTap;

  const OrderedItemCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceAtElevation(context, 1),
      borderRadius: BorderRadius.circular(AppDimens.radiusLg),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppDimens.radiusLg),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.spacingContainer,
            vertical: 13.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.radiusLg)
          ),
          child: Row(
            children: [
              // Menu Image, Name, & Price
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppDimens.radiusSm),
                  child: Image.network(
                    'https://cdn.yummy.co.id/content-images/images/20230711/dgwHYMe7VuvYg1nSsdWf5SIKN2VGJHQ1-31363839303434313535d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/resize,w_388,h_388,m_fixed,x-oss-process=image/format,webp',
                  ),
                ),
              ),
        
              const SizedBox(width: AppDimens.spacingBetweenComponent,),
              
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tahu',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                      ),
                    ),
                    const SizedBox(height: AppDimens.spacingBetweenComponent,),
                    Text(
                      'Rp. 4.000',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(width: AppDimens.spacingBetweenComponent,),
        
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.primarySwatch[200],
                      borderRadius: BorderRadius.circular(AppDimens.radiusSm)
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: AppColors.primarySwatch[900],
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}