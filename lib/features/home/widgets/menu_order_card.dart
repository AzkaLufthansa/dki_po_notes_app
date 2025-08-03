import 'package:flutter/material.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_dimens.dart';

class MenuOrderCard extends StatelessWidget {
  const MenuOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppDimens.spacingBetweenComponent,
        crossAxisSpacing: AppDimens.spacingBetweenComponent,
        mainAxisExtent: 180,
      ), 
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.radiusLg),
            color: AppColors.surfaceAtElevation(context, 1),
            image: DecorationImage(
              image: NetworkImage(
                'https://i.ytimg.com/vi/DMJQg3MeL8E/maxresdefault.jpg',
              ),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.7),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tahu Goreng',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                          )
                        ),
                        Text(
                          'Rp. 80.000',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ],
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primarySwatch[200]
                      ),
                      child: Text(
                        '20',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.primarySwatch[900],
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        );
      },
    );
  }
}