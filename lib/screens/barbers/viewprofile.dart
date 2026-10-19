import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/screens/barbers/editprofile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String role = 'Barber';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Heading(title: "View Profile", size: 40),

        Container(
          padding: EdgeInsets.only(top: 15, left: 4, right: 4),
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
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Abhay',
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
                    activeColor: AppColors.textBlack,
                    value: 'Barber',
                    groupValue: role,
                  ),
                  Text(
                    'Barber',
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
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Abhay@gmail.com',
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
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: '1234567890',
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
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Rajkot',
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
              text: 'Edit Profile',
              width: 200.0,
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Editprofile()),
                  );
               
              },
            ),
          ),

      ],
    );
  }
}
