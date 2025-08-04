import 'package:flutter/material.dart';

import '../../../../../shared/theme/app_colors.dart';
import '../../../../../shared/theme/app_dimens.dart';

class MemberOrderItemCard extends StatelessWidget {
  const MemberOrderItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppDimens.spacingContainer),
          decoration: BoxDecoration(
            color: AppColors.surfaceAtElevation(context, 2),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppDimens.radiusLg)
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A Cahya',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                ),
              ),
        
              const SizedBox(height: AppDimens.spacingBetweenComponent,),
        
              ListView.separated(
                itemCount: 2,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => MenuOrderItem(), 
                separatorBuilder: (context, index) => const SizedBox(
                  height: AppDimens.spacingBetweenComponent,
                ),
              )
            ],
          ),
        ),

        // Per Member Total
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.spacingContainer,
            vertical: 10.0
          ),
          decoration: BoxDecoration(
            color: AppColors.primarySwatch[200],
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(AppDimens.radiusLg)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: AppColors.primarySwatch[900]
                ),
              ),
              Text(
                'Rp. 20.000',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.primarySwatch[900],
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MenuOrderItem extends StatelessWidget {
  const MenuOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Menu Image
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.radiusSm),
                child: Image.network(
                  'https://buckets.sasa.co.id/v1/AUTH_Assets/Assets/p/website/medias/page_medias/Screen_Shot_2023-01-09_at_17_40_36_(1)_(1)_(1)_(1)_(1)_(1)_(1)_(1).png'
                  // wid
                ),
              ),
            ),
        
            const SizedBox(width: AppDimens.spacingBetweenComponent,),
        
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Menu Name
                  Text.rich(
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ayam Bakar ',
                        ),
                        TextSpan(
                          text: 'x 2',
                        ),
                      ]
                    )
                  ),
              
                  // Menu Price
                  Text(
                    'Rp. 20.000',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                    ),
                  )
                ],
              ),
            )
          ],
        ),

        const SizedBox(height: AppDimens.spacingBetweenComponent,),

        // Order Note
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.surfaceAtElevation(context, 4),
            borderRadius: BorderRadius.circular(AppDimens.radiusSm),
          ),
          child: Text(
            '*Banyakin sambelnya',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            ),
          ),
        )
      ],
    );
  }
}