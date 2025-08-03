import 'package:flutter/material.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_dimens.dart';
import 'member_order_item_card.dart';

class GroupOrderCard extends StatelessWidget {
  final Function(int, bool) expansionCallback;
  final bool isExpanded;

  const GroupOrderCard({
    super.key, 
    required this.expansionCallback,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimens.radiusLg),
      // Outer Items
      child: ExpansionPanelList(
        expansionCallback: (index, isExpanded) => expansionCallback(index, isExpanded),
        children: [
          ExpansionPanel(
            isExpanded: isExpanded,
            canTapOnHeader: true,
            backgroundColor: AppColors.surfaceAtElevation(context, 1),
            headerBuilder: (context, isExpanded) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.spacingContainer,
                  vertical: AppDimens.spacingContainer,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Grup Caca',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)
                      ),
                    ),
                    Text(
                      'Rp. 40.000',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              );
            },
            body: ListView.separated(
              padding: const EdgeInsets.symmetric(
                vertical: AppDimens.spacingBetweenComponent,
                horizontal: AppDimens.spacingContainer
              ),
              itemCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // Inner Items
                return MemberOrderItemCard();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: AppDimens.spacingBetweenComponent,);              },
            ),
          ),
        ],
      ),
    );
  }
}