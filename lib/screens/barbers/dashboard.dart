import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
     
     body: ListView(

      children: [
        Container(
        
         height: 90,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             
             Image.asset(i2[0], fit: BoxFit.contain),


           CustomButton(
              
                text: 'Log out',
                height: 30,
                width: 130,
                onPressed: () {
                },
              ),
          
          ],
        )
        )

      ]

     ),

      
      
      );
  }
}
