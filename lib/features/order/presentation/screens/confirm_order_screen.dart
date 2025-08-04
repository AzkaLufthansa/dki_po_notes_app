import 'package:dki_po_notes_app/shared/widgets/text_fields/basic_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../shared/enums/enums.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_dimens.dart';
import '../widgets/confirm_order/confirm_item_dialog.dart';
import '../widgets/confirm_order/ordered_item_card.dart';
import '../widgets/confirm_order/total_bottom_bar.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  CustomerType _customerType = CustomerType.INDIVIDUAL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Konfirmasi Pesanan',
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: AppDimens.spacingBackground,
              right: AppDimens.spacingBackground,
              top: AppDimens.spacingBackground,
              bottom: 150
            ),
            child: Column(
              children: [
                // Ordered Items
                ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return OrderedItemCard(
                      onTap: () {
                        showDialog(
                          context: context, 
                          builder: (context) => ConfirmItemDialog(),
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: AppDimens.spacingBetweenComponent,
                  ),
                ),
            
                const SizedBox(height: 25,),
            
                // TextFields
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.spacingContainer,
                    vertical: AppDimens.spacingContainer
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceAtElevation(context, 1),
                    borderRadius: BorderRadius.circular(AppDimens.radiusLg)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Ready Date
                      Text(
                        'Tanggal Ready',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                        ),
                      ),
                      const SizedBox(height: 8,),
                      BasicTextField(
                        suffixIcon: Icons.calendar_month_rounded,
                        hintText: 'Tanggal Ready',
                        fillColor: AppColors.surfaceAtElevation(context, 2),
                      ),
            
                      const SizedBox(height: 20,),
            
                      Text(
                        'Nama Pelanggan',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                        ),
                      ),
                      const SizedBox(height: 8,),
                      BasicTextField(
                        hintText: 'Nama Pelanggan',
                        fillColor: AppColors.surfaceAtElevation(context, 2),
                      ),
            
                      const SizedBox(height: 20,),
            
                      // Tipe Pelanggan
                      Text(
                        'Tipe Pelanggan',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                        ),
                      ),
                      RadioListTile(
                        value: CustomerType.INDIVIDUAL, 
                        groupValue: _customerType, 
                        onChanged: (value) {
                          setState(() => _customerType = value!);
                        },
                        title: Text(
                          'Masing-masing',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                          ),
                        ),
                        dense: true,
                      ),
                      RadioListTile(
                        value: CustomerType.GROUP, 
                        groupValue: _customerType, 
                        onChanged: (value) {
                          setState(() => _customerType = value!);
                        },
                        title: Text(
                          'Group',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                          ),
                        ),
                        dense: true,
                      ),
            
                      const SizedBox(height: 20.0,),
                      
                      Text(
                        'Grup Pelanggan',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87)
                        ),
                      ),
                      const SizedBox(height: 8.0,),
                      BasicTextField(
                        hintText: 'Grup Pelanggan',
                        fillColor: AppColors.surfaceAtElevation(context, 2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      
          // Total Section
          TotalBottomBar()
        ],
      ),
    );
  }
}