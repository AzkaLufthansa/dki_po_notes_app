import 'package:flutter/material.dart';

import '../../../../../shared/theme/app_colors.dart';
import '../../../../../shared/theme/app_dimens.dart';

class PODataSummary extends StatelessWidget {
  const PODataSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.spacingContainer),
      decoration: BoxDecoration(
        color: AppColors.primarySwatch[200],
        borderRadius: BorderRadius.circular(AppDimens.radiusLg)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SummaryRowItem(
            label: 'Total',
            data: 'Rp. 90.000'
          ),
          const SizedBox(height: 3,),
          SummaryRowItem(
            label: 'Jenis Makanan',
            data: '2'
          ),
          const SizedBox(height: 3,),
          SummaryRowItem(
            label: 'Grup',
            data: '9'
          ),
          const SizedBox(height: 3,),
          SummaryRowItem(
            label: 'Pelanggan',
            data: '51'
          ),
        ],
      ),
    );
  }
}

class SummaryRowItem extends StatelessWidget {
  final String label;
  final String data;
  
  const SummaryRowItem({
    super.key, required this.label, required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: AppColors.primarySwatch[900]
          ),
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.primarySwatch[900],
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}