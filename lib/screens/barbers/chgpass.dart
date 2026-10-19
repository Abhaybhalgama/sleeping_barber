import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/btabbar.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/barbers/editprofile.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
    final formkey = GlobalKey<FormState>();

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
                      MaterialPageRoute(builder: (context) => Editprofile()),
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
          Heading(title: "Change Password", size: 40),

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
                    MaterialPageRoute(builder: (context) => Editprofile()),
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
