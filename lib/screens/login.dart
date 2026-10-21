import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/atabbar.dart';
import 'package:sleeping_barber/controls/btabbar.dart';
// import 'package:sleeping_barber/controls/btabbar.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/ctabbar.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 125,
              margin: const EdgeInsets.only(left: 0, top: 30),
              child: Image.asset(i2[0], fit: BoxFit.contain),
            ),
          ),
          Heading(title: 'Login'),
          Container(
            padding: const EdgeInsets.all(4),
            height: 270,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 19,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textBlack, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Email Row
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          "Email :",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter email";
                            }
                            final emailRegex = RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                            );
                            if (!emailRegex.hasMatch(value)) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.textfield,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Password Row
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          "Password:",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.textfield,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Text(
                  "New Here?",
                  style: TextStyle(
                    fontFamily: "serif",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: "serif",
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: CustomButton(
              text: 'Login',
              width: 200.0,
              onPressed: () {
                // Triggers validation checks for Email and Password fields
                if (formkey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ATabbar()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
