import 'package:flutter/material.dart';
import 'package:task/srceen/Login_seceen/create_account.dart';
import 'package:task/widget/Elevatedbutton.dart';
import 'package:task/widget/Textformfild.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
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
              'Log in',
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
                    'Email',
                    style: TextStyle(fontSize: 14, color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 8),
                  CustomTextField(hintText: 'Email'),
                  SizedBox(height: 8),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 14, color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 8),
                  CustomTextField(
                    hintText: 'Password',
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
                  CustomElevatedButton(text: "Log in", onPressed: () {}),
                  SizedBox(height: 16),
                  CustomElevatedButton(
                    text: "Login With Google",
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF363636),
                    logo: Image.asset('assets/images/google.png', height: 20),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New to Learnova? ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccount(),
                            ),
                          );
                        },
                        child: Text(
                          "Create an Account",
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
