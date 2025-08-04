import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/theme/app_colors.dart';
import '../../../../../shared/theme/app_dimens.dart';
import '../../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../../shared/widgets/buttons/secondary_button.dart';
import '../../../../../shared/widgets/text_fields/basic_checkbox.dart';
import '../../../../../shared/widgets/text_fields/basic_text_field.dart';

class ConfirmItemDialog extends StatefulWidget {
  const ConfirmItemDialog({super.key});

  @override
  State<ConfirmItemDialog> createState() => _ConfirmItemDialogState();
}

class _ConfirmItemDialogState extends State<ConfirmItemDialog> {
  bool _tempPrice = false;
  bool _addNote = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.surfaceAtElevation(context, 6),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: AppDimens.spacingContainer),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ItemSelected(),
            const SizedBox(height: 15,),
            DialogDivider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {}, 
                      icon: Icon(
                        Icons.horizontal_rule_rounded,
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 4,
                  child: Text(
                    '2',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {}, 
                      icon: Icon(
                        Icons.add_rounded,
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DialogDivider(),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingContainer),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BasicCheckbox(
                    value: _tempPrice, 
                    onChanged: (value) {
                      setState(() => _tempPrice = value);
                    },
                    title: 'Ubah harga sementara'
                  ),
                  _tempPrice
                    ? BasicTextField(
                        hintText: 'Harga Sementara',
                        fillColor: AppColors.surfaceAtElevation(context, 12),
                      )
                    : const SizedBox(),

                  const SizedBox(height: AppDimens.spacingBetweenComponent,),

                  BasicCheckbox(
                    value: _addNote, 
                    onChanged: (value) {
                      setState(() => _addNote = value);
                    },
                    title: 'Tambahkan catatan singkat'
                  ),
                  _addNote
                    ? BasicTextField(
                        hintText: 'Catatan singkat',
                        fillColor: AppColors.surfaceAtElevation(context, 12),
                      )
                    : const SizedBox()
                ],
              ),
            ),

            const SizedBox(height: 30.0,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingContainer),
              child: Row(
                children: [
                  Expanded(
                    child: SecondaryButton(
                      label: 'Batal',
                      onTap: () => context.pop(),
                    ),
                  ),
                  const SizedBox(width: AppDimens.spacingBetweenComponent,),
                  Expanded(
                    child: PrimaryButton(
                      label: 'Simpan'
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DialogDivider extends StatelessWidget {
  const DialogDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        Divider(
          height: 1, 
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}

class ItemSelected extends StatelessWidget {
  const ItemSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingContainer),
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
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tahu',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                  ),
                ),
                // const SizedBox(height: AppDimens.spacingBetweenComponent,),
                Text(
                  'Rp. 4.000',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                  ),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}