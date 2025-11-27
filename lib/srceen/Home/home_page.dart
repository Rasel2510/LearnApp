import 'package:flutter/material.dart';
import 'package:task/srceen/Search.dart';
import 'package:task/widget/Catagory.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Learn Through Watching Reels",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Search()),
                    );
                  },
                  icon: Icon(Icons.search, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Trending',
                          style: TextStyle(
                            fontSize: 14,
                            color: selectedIndex == 0
                                ? Color(0xFF023F86)
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 1,
                          width: 100,
                          color: selectedIndex == 0
                              ? Color(0xFF023F86)
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'New',
                          style: TextStyle(
                            fontSize: 14,
                            color: selectedIndex == 1
                                ? Color(0xFF023F86)
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 1,
                          width: 100,
                          color: selectedIndex == 1
                              ? Color(0xFF023F86)
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 14,
                            color: selectedIndex == 2
                                ? Color(0xFF023F86)
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 1,
                          width: 100,
                          color: selectedIndex == 2
                              ? Color(0xFF023F86)
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CategoryChips(),
            SizedBox(height: 20),

            // Expanded(
            //   child: GridView.builder(
            //     itemCount: CardData.cardList.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       crossAxisSpacing: 12,
            //       mainAxisSpacing: 12,
            //       childAspectRatio: 0.7,
            //     ),
            //     itemBuilder: (context, index) {
            //       return CardItem(card: CardData.cardList[index]);
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
