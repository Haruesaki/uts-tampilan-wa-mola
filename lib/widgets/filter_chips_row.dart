import 'package:flutter/material.dart';

class FilterChipsRow extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const FilterChipsRow({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  static const _labels = ['All', 'Favorites', 'praktikum 5', 'asdos 1', 'kip'];

  @override
  Widget build(BuildContext context) {
    const selectedBg = Color(0xFF103629);
    const selectedText = Color(0xFFD9FDD3);
    const unselectedBorder = Color(0xFF2A3942);
    const unselectedText = Color(0xFF8696A0);

    return SizedBox(
      height: 52,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _labels.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onSelected(index),
            child: Container(
              height: 40,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? selectedBg : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: isSelected
                    ? null
                    : Border.all(color: unselectedBorder),
              ),
              child: Text(
                _labels[index],
                style: TextStyle(
                  color: isSelected ? selectedText : unselectedText,
                  fontSize: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
