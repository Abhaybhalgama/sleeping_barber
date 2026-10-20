import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/btabbar.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/barbers/chgpass.dart';

class Editprofile extends StatefulWidget {

   Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
       final formkey = GlobalKey<FormState>();
  String role = 'Barber';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push( 
                      context,
                      MaterialPageRoute(builder: (context) => const BTabbar()),
                    );
                  },
                child:Row(
                  children: [
                    Icon(Icons.arrow_back_ios,color: Colors.black,),
                    const Text(
                      "Back",     
                      style: TextStyle(
                        fontFamily: "serif",
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
                  )
,
                ),

              Container(
                alignment: Alignment.topLeft,
                height: 80,
                child: Image.asset(i2[0], fit: BoxFit.contain),
              
              ),
            ],
          ),
          Heading(title: "Edit Profile", size: 40),

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
                            // Standard Email Regex Pattern
                            final emailRegex = RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                            );
                            if (!emailRegex.hasMatch(value!)) {
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
                          readOnly: true,
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
                          validator: (value) {
                            // Standard Phone Number Regex Pattern
                            final phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');
                            if (!phoneRegex.hasMatch(value!)) {
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

                Container(
                alignment: Alignment.bottomRight,
                 child: TextButton(
                                
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChangePassword()),
                      );
                    },
                    child: const Text(
                      "Change Password",
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
                ),

                ],
              ),
            ),
          ),
            Center(
            child: CustomButton(
              text: 'Save Changes',
              width: 200.0,
              onPressed: ()  {
                if (formkey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BTabbar()),
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
