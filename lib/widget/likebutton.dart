import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isLiked
              ? const Color.fromARGB(136, 213, 212, 212)
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          isLiked ? Icons.thumb_up : Icons.thumb_up_off_alt,
          color: isLiked ? Colors.blue : const Color.fromARGB(255, 98, 94, 94),
          size: 28,
        ),
      ),
    );
  }
}
