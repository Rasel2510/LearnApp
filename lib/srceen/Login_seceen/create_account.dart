import 'package:flutter/material.dart';
import 'package:task/srceen/Login_seceen/setprofile.dart';
import 'package:task/widget/Elevatedbutton.dart';
import 'package:task/widget/Textformfild.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void createAccount() {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("All fields are required")));
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Passwords do not match")));
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ProfileSetupScreen()),
    );
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF023F86),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 70, width: 250),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Create Account',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        'Student',
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
                        width: 60,
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
                        'Teacher',
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
                        width: 60,
                        color: selectedIndex == 1
                            ? Color(0xFF023F86)
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 14, color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 8),
                  CustomTextField(hintText: 'Name', controller: nameController),
                  SizedBox(height: 8),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 14, color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 8),
                  CustomTextField(
                    hintText: 'Email',
                    controller: emailController,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 14, color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 8),
                  CustomTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 14, color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 8),
                  CustomTextField(
                    hintText: 'Confirm Password',
                    controller: confirmPasswordController,
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  CustomElevatedButton(
                    text: "Create Account",
                    onPressed: () {
                      createAccount();
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account  ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Log in",
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ],
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
