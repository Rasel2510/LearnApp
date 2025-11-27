import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({super.key});

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFollowing = !isFollowing;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: isFollowing
              ? const Color.fromARGB(87, 236, 234, 234)
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.transparent, width: 2),
        ),
        child: Text(
          isFollowing ? 'Following' : 'Follow',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
