import 'package:flutter/material.dart';
import 'package:simple_login_ui/components/input_field.dart';
import 'package:simple_login_ui/components/logo_button.dart';

Color? primaryTextColor = Colors.grey[700];

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userNameController = TextEditingController();
    final passwordController = TextEditingController();
    void popUp() {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text(
                "Working on it...",
                // style: TextStyle(color: Colors.green[400]),
                textAlign: TextAlign.center,
              ),
            );
          });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.android_rounded,
                    size: 120,
                    color: Colors.green[400],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Welcome back! Please login to continue.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: primaryTextColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  InputField(
                    controller: userNameController,
                    hintText: "Username or Email",
                    obscureText: false,
                  ),
                  const SizedBox(height: 30),
                  InputField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => popUp(),
                        child: Text(
                          "Forgot Password?",
                          style:
                              TextStyle(color: primaryTextColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Colors.green[400]), // Colors.black),
                    onPressed: () => popUp(),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(height: 2, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "or continue with",
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryTextColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(height: 2, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LogoButton(
                        imgPath: "assets/google.png",
                        onPressed: () => popUp(),
                      ),
                      const SizedBox(width: 30),
                      LogoButton(
                        imgPath: "assets/apple.png",
                        onPressed: () => popUp(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () => popUp(),
                        child: Text(
                          "Make a new one.",
                          style: TextStyle(
                              color: Colors.green[400],
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
