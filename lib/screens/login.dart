import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/customers/dashboard.dart';
import 'package:sleeping_barber/screens/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              margin: EdgeInsets.only(left: 0, top: 30),
              child: Image.asset(i2[0], fit: BoxFit.contain),
            ),
          ),
          Heading(title: 'Login'),

          Container(
            padding: EdgeInsets.all(4),
            height: 270,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 19),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textBlack, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Email Row
                Row(
                  children: [
                    SizedBox(
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
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.textfield,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Password Row
                Row(
                  children: [
                    SizedBox(
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
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.textfield,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
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
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: [
                Text(
                  "New Here?",
                  style: TextStyle(
                    fontFamily: "serif",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Text("Register",
                  style: TextStyle(
                    fontFamily: "serif",
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
          ),
          Center(
            child: CustomButton(
              text: 'Login',
              width: 200.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
