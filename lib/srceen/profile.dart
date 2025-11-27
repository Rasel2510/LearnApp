import 'package:flutter/material.dart';
import 'package:task/widget/Elevatedbutton.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Row(children: [Icon(Icons.settings)]),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("assets/images/jessica.png"),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Jassica Roy",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Joined since - Jun 2024',
                      style: TextStyle(fontSize: 12, color: Color(0xFF545454)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFE6EBF1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "05",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'In Progress',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF545454),
                          ),
                        ),
                      ],
                    ),

                    Container(height: 50, width: 1, color: Colors.grey),
                    Column(
                      children: [
                        Text(
                          "01",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Complited',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF545454),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 50, width: 1, color: Colors.grey),
                    Column(
                      children: [
                        Text(
                          "50",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF545454),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Courses",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  //
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Courses",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "32 minits ago",
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "32 minits ago",
                          style: TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage(
                                "assets/images/jessica.png",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Jassica Roy",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomElevatedButton(
                                  text: "Get Back To It",
                                  height: 40,
                                  backgroundColor: Color(0xFF008DE7),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: CustomElevatedButton(
                                  text: "Course Details",
                                  backgroundColor: Colors.white,
                                  foregroundColor: Color(0xFF023F86),
                                  height: 40,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Courses",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "32 minits ago",
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "32 minits ago",
                          style: TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage(
                                "assets/images/jessica.png",
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Jassica Roy",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomElevatedButton(
                                  text: "Get Back To It",
                                  height: 40,
                                  backgroundColor: Color(0xFF008DE7),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: CustomElevatedButton(
                                  text: "Course Details",
                                  backgroundColor: Colors.white,
                                  foregroundColor: Color(0xFF023F86),
                                  height: 40,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
