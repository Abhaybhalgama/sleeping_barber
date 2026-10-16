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
  String role = 'Customer';

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
            padding: EdgeInsets.only(top: 15, left: 4, right: 4),
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 19),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textBlack, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: formkey,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter name";
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
                  Row(
                   children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Role:",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Radio<String>(
                        value: 'Barber',
                        groupValue: role,
                        onChanged: (value) {
                          setState(() {
                            role = value!;
                          });
                        },
                      ),
                      Text('Barber',
                    style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),               
                      Radio<String>(
                        value: 'Customer',
                        groupValue: role,
                        onChanged: (value) {
                          setState(() {
                            role = value!;
                          });
                        },
                      ),
                      Text('Customer',
                    style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter phone number";
                            }
                            // Standard Phone Number Regex Pattern
                            final phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');
                            if (!phoneRegex.hasMatch(value)) {
                              return "Please enter a valid phone number";
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter address";
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
                ],
              ),
            ),
          ),
          Center(
            child: CustomButton(
              text: 'Submit',
              width: 200.0,
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
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
