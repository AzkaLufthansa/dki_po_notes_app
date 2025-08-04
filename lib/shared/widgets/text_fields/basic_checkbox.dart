import 'package:flutter/material.dart';

class BasicCheckbox extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;
  const BasicCheckbox({
    super.key, 
    required this.title, 
    required this.value, 
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value, 
      onChanged: (value) => onChanged(value!), 
      title: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
        ),
      ),
    );
  }
}