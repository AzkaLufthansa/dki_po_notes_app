import 'package:flutter/material.dart';

import '../../../../shared/theme/app_dimens.dart';
import '../../../../shared/widgets/buttons/custom_fab.dart';
import '../../../../shared/widgets/text_fields/basic_text_field.dart';
import '../../widgets/circle_button.dart';
import '../../widgets/circle_button_toggle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showSummary = false;
  bool selectMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Pre-Order',
        ),
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.menu, size: 30,),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDimens.spacingBackground),
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
                          setState(() => showSummary = !value);
                        },
                        icon: Icons.remove_red_eye,
                        isActive: showSummary,
                      ),
                  
                      // View Option
                      CircleButton(
                        icon: Icons.grid_view_rounded,
                      ),
                  
                      // Select Toggle
                      CircleButtonToggle(
                        onToggle: (value) {
                          setState(() => selectMode = !value);
                        },
                        icon: Icons.check_box_rounded,
                        isActive: selectMode,
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
          ],
        ),
      ),
      floatingActionButton: CustomFAB(
        icon: Icons.add_rounded,
      ),
    );
  }
}



