import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/enums/enums.dart';
import '../../../../shared/theme/app_dimens.dart';
import '../../../../shared/widgets/buttons/custom_fab.dart';
import '../../../../shared/widgets/text_fields/basic_text_field.dart';
import '../widgets/home/circle_button.dart';
import '../widgets/home/circle_button_toggle.dart';
import '../widgets/home/group_order_card.dart';
import '../widgets/home/main_drawer.dart';
import '../widgets/home/menu_card.dart';
import '../widgets/home/po_data_summary.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showSummary = false;
  bool _selectMode = false;
  bool _isExpanded = false;

  HomeViewMode _viewMode = HomeViewMode.GROUP;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Pre-Order',
        ),
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: AppDimens.spacingBackground,
          right: AppDimens.spacingBackground,
          top: AppDimens.spacingBackground,
          bottom: 100
        ),
        child: Column(
          children: [
            // Search Button Row
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: BasicTextField(
                    hintText: 'Cari...',
                    suffixIcon: Icons.search,
                  ),
                ),

                const SizedBox(width: 5,),

                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Summary Toggle
                      CircleButtonToggle(
                        onToggle: (value) {
                          setState(() => _showSummary = !value);
                        },
                        icon: Icons.remove_red_eye,
                        isActive: _showSummary,
                      ),
                  
                      // View Option
                      CircleButton(
                        onTap: () {
                          if (_viewMode == HomeViewMode.GROUP) {
                            setState(() => _viewMode = HomeViewMode.ITEM);
                          } else {
                            setState(() => _viewMode = HomeViewMode.GROUP);
                          }
                        },
                        icon: _viewMode != HomeViewMode.GROUP
                          ? Icons.view_agenda_rounded
                          : Icons.grid_view_rounded,
                      ),
                  
                      // Select Toggle
                      CircleButtonToggle(
                        onToggle: (value) {
                          setState(() => _selectMode = !value);
                        },
                        icon: Icons.check_box_rounded,
                        isActive: _selectMode,
                      ),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: AppDimens.spacingBetweenComponent,),

            // Date Filter Field
            BasicTextField(
              hintText: 'Kamis, 5 Agustus 2025',
              suffixIcon: Icons.calendar_month_sharp,
            ),

            const SizedBox(height: AppDimens.spacingBetweenComponent,),

            // PO Summary
            Builder(
              builder: (context) {
                if (_showSummary) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: AppDimens.spacingBetweenComponent
                    ),
                    child: PODataSummary(),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            
            // Pre-Order Data List
            Builder(
              builder: (context) {
                if (_viewMode == HomeViewMode.GROUP) {
                  // Per Group View
                  return GroupOrderCard(
                    isExpanded: _isExpanded,
                    expansionCallback: (index, isExpanded) {
                      setState(() {
                        _isExpanded = isExpanded;
                      });
                    },
                  );
                } else if (_viewMode == HomeViewMode.ITEM) {
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
                      return MenuCard(
                        addCounter: true,
                      );
                    },
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            // Per Menu View
          ],
        ),
      ),
      floatingActionButton: CustomFAB(
        onTap: () {
          context.push('/add_order');
        },
        icon: Icons.add_rounded,
      ),
    );
  }
}


