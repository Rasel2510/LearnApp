import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task/data/course_data.dart';
import 'package:task/srceen/Search.dart';
import 'package:task/widget/Catagory.dart';
import 'package:task/widget/gride_card.dart';

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
            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: CardData.cardList.length,
                itemBuilder: (context, index) {
                  bool isBig = index % 2 == 0;

                  return SizedBox(
                    height: isBig ? 268 : 209,
                    child: CardItem(card: CardData.cardList[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
