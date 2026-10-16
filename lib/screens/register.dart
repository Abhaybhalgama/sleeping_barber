import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/login.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              margin: EdgeInsets.only(left: 0, top: 10),
              child: Image.asset(i2[0], fit: BoxFit.contain),
            ),
          ),
          Heading(title: 'Register'),

          Container(
            padding: EdgeInsets.only(top: 10, left: 4, right: 4),
            height: 400,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 19),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textBlack, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      child: Text(
                        "Name :",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'serif',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
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

                SizedBox(height: 20),

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
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter email";
                          }
                          // Standard Email Regex Pattern
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
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

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
                      child: TextFormField(
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
                SizedBox(height: 20),

                 Row(
                  children: [
                    SizedBox(
                      width: 110,
                      child: Text(
                        "Phone:",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'serif',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
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
                SizedBox(height: 20),
                
                                 Row(
                  children: [
                    SizedBox(
                      width: 110,
                      child: Text(
                        "Address:",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'serif',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
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
                SizedBox(height: 20),

              ],
            ),
          ),
          Center(
            child: CustomButton(
              text: 'Submit',
              width: 200.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
