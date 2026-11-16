import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/dummy_menu.dart';
import '../providers/menu_provider.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MenuProvider>();
    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final selected = provider.selectedCategory == cat;
          return ChoiceChip(
            label: Text(cat),
            selected: selected,
            showCheckmark: false,
            selectedColor: Theme.of(context).colorScheme.primary,
            labelStyle: TextStyle(
              color: selected ? Colors.white : Colors.brown.shade700,
              fontWeight: FontWeight.w600,
            ),
            onSelected: (_) => context.read<MenuProvider>().setCategory(cat),
          );
        },
      ),
    );
  }
}
