import 'package:flutter/material.dart';

class CategoryChips extends StatefulWidget {
  const CategoryChips({super.key});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    '中文',
    'English',
    'Maths',
    'Chemist',
    'Biology',
    'Geography',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: categories.map((category) {
          final isSelected = selectedCategory == category;

          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFFE5F5FF)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: isSelected
                        ? const Color(0xFFE5F5FF)
                        : Colors.grey.shade400,
                    width: 1,
                  ),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Color(0xFF008DE7) : Colors.black87,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
