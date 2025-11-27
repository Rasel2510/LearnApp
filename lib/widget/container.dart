import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  const CustomContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
