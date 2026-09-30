import 'package:flutter/material.dart';
import '../controls/text_field.dart';
import '../controls/button.dart';
import '../resources/colors.dart';
import '../resources/images.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Image.asset(i2[0], height: 80),
            SizedBox(height: 20),
            Text(
              "Login",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            CustomTextField(label: "Email", controller: emailController),
            CustomTextField(
              label: "Password",
              controller: passwordController,
              isPassword: true,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text.rich(
                  TextSpan(
                    text: "New here? ",
                    style: TextStyle(color: AppColors.textBlack, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Register",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Login",
              onTap: () {
                // TODO: connect to backend/Firebase later
              },
            ),
          ],
        ),
      ),
    );
  }
}
