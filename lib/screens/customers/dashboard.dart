import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/customers/cservice.dart';
import 'package:sleeping_barber/screens/customers/history.dart';
import 'package:sleeping_barber/screens/customers/recent.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Heading(title: "Welcome Abhay", size: 40),

        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(i2[7], fit: BoxFit.contain),
              SizedBox(height: 15,),
              Image.asset(i2[8], fit: BoxFit.contain),
            ],
          ),
        ),


        Column(
          children: [
            CustomButton(
              text: "+ Book Your Slot",
              height: 70,
              width: 350,
              fontsize: 25,
              radius: 20,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cservice()),
                );
              },
            ),

            SizedBox(height: 25,)
          ],
        ),
      ],
    );
  }
}