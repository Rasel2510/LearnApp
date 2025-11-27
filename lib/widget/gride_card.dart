import 'package:flutter/material.dart';
import '../models/card_model.dart';

class CardItem extends StatelessWidget {
  final CardModel card;

  const CardItem({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(child: Image.asset(card.image, fit: BoxFit.cover)),

          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                ),
              ),
            ),
          ),

          Positioned(
            left: 12,
            bottom: 12,
            right: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  card.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(card.teacherImage),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      card.teacherName,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
