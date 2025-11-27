import 'package:flutter/material.dart';
import 'package:task/widget/follow_button.dart';
import 'package:task/widget/likebutton.dart';

class SecendSrc extends StatefulWidget {
  const SecendSrc({super.key});

  @override
  State<SecendSrc> createState() => _SecendSrcState();
}

class _SecendSrcState extends State<SecendSrc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/page2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(22, 234, 234, 239),
                ),

                child: Icon(Icons.search, color: Colors.white),
              ),
            ),

            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                          "assets/images/jessica.png",
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Jassica Roy",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      FollowButton(),
                      SizedBox(width: 10),
                      LikeButton(),
                    ],
                  ),
                  Text(
                    "Start Learning Vocabulary Today!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 290,
                    height: 40,
                    child: Text(
                      "So what is the necessary to learn vocabulary in today world. Everyone is learn.....read more",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
