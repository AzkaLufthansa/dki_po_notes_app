import 'package:dki_po_notes_app/shared/widgets/text_fields/basic_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../shared/theme/app_dimens.dart';
import '../../../../shared/widgets/buttons/custom_fab.dart';
import '../widgets/home/menu_card.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  final List<dynamic> _itemsSelected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tambah Pesanan',
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.add_rounded,
              size: 30,
            )
          )
        ],
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.spacingBackground),
          child: Column(
            children: [
              BasicTextField(
                hintText: 'Cari...',
                suffixIcon: Icons.search_rounded,
              ),

              const SizedBox(height: AppDimens.spacingBetweenComponent,),

              GridView.builder(
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
                  return MenuCard(
                    addCounter: false
                  );
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFAB(
        icon: Icons.shopping_bag_rounded,
        disabled: _itemsSelected.isEmpty ? true :false
      ),
    );
  }
}