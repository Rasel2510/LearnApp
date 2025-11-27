import 'package:flutter/material.dart';
import 'package:task/widget/Textformfild.dart';
import 'package:task/widget/container.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black),
                    ),

                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Search",
              suffixIcon: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1153A0),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(Icons.search, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomContainer(text: "Trigonometry"),
                  SizedBox(height: 8),
                  CustomContainer(text: "Vocabulary"),
                  SizedBox(height: 8),
                  CustomContainer(text: "Grammar"),
                  SizedBox(height: 8),
                  CustomContainer(text: "Geography"),
                  SizedBox(height: 8),
                  CustomContainer(text: "other"),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
