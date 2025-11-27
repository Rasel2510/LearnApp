import 'package:flutter/material.dart';
import 'package:task/srceen/Navigation/botton_nev.dart';
import 'package:task/widget/expantion_tile.dart';
import '../../widget/Elevatedbutton.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  String? selectedSchool = 'Diocesan Boys\' School';
  String? selectedSubject = 'Mathematics';
  String? selectedGrade = 'Primary 6';
  String? referralSource = 'Friends';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(height: 10),

              // Main content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Personalizing course according to your profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 32),

                      ProfileExpansionTile(
                        label: 'Current School',
                        value: selectedSchool!,
                        options: const [
                          'Diocesan Boys\' School',
                          'Other School 1',
                          'Other School 2',
                        ],
                        onSelected: (value) {
                          setState(() => selectedSchool = value);
                        },
                      ),
                      const SizedBox(height: 24),

                      ProfileExpansionTile(
                        label: 'Elective Subject',
                        value: selectedSubject!,
                        options: const [
                          'Mathematics',
                          'Science',
                          'English',
                          'History',
                        ],
                        onSelected: (value) {
                          setState(() => selectedSubject = value);
                        },
                      ),
                      const SizedBox(height: 24),

                      ProfileExpansionTile(
                        label: 'Current Grade',
                        value: selectedGrade!,
                        options: const [
                          'Primary 4',
                          'Primary 5',
                          'Primary 6',
                          'Secondary 1',
                        ],
                        onSelected: (value) {
                          setState(() => selectedGrade = value);
                        },
                      ),
                      const SizedBox(height: 24),

                      ProfileExpansionTile(
                        label: 'How Did You Hear About Us?',
                        value: referralSource!,
                        options: const [
                          'Friends',
                          'Social Media',
                          'School',
                          'Advertisement',
                        ],
                        onSelected: (value) {
                          setState(() => referralSource = value);
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              CustomElevatedButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottonNev()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
