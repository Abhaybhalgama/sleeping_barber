import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/screens/admin/addservice.dart';
import 'package:sleeping_barber/screens/admin/adduser.dart';
import 'package:sleeping_barber/screens/admin/recent.dart';
import 'package:sleeping_barber/screens/admin/review.dart';

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
        Heading(title: "Welcome Admin", size: 40,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text( "Total Barbers : ",
          
          
             style: TextStyle(
              fontSize: 27,
              fontFamily: "serif"
             ),),
             Container(
              margin: EdgeInsets.only(left:35),
              alignment: Alignment.center,
               width: 70,
               height: 70,
               decoration: BoxDecoration(
                color: AppColors.label,
                borderRadius: BorderRadius.circular(12)
               ),
               child: Text("4",style: TextStyle(
                fontSize: 25,
                fontFamily: "serif"
                
               ),),

              )
            ],
        ),
        SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text( "Total Customers : ",
             style: TextStyle(
              fontSize: 27,
              fontFamily: "serif"
             ),),
             Container(
              alignment: Alignment.center,
               width: 70,
               height: 70,
               decoration: BoxDecoration(
                color: AppColors.label,
                borderRadius: BorderRadius.circular(12)
               ),
               child: Text("120",style: TextStyle(
                fontSize: 25,
                fontFamily: "serif"
                
               ),),

              )
            ],
        ),
              SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text( "Pending Booking:",
             style: TextStyle(
              fontSize: 27,
              fontFamily: "serif"
             ),),
             Container(
              alignment: Alignment.center,
               width: 70,
               height: 70,
               decoration: BoxDecoration(
                color: AppColors.label,
                borderRadius: BorderRadius.circular(12)
               ),
               child: Text("150",style: TextStyle(
                fontSize: 25,
                fontFamily: "serif"
                
               ),),

              )
            ],
        ),
                SizedBox(height: 80,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "+ Service",
                  height: 70,
                  width: 160,
                  fontsize: 25,
                  radius: 20,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Addservice()),
                    );
                  },
                ),
                
                CustomButton(
                  text: "+ Users",
                  height: 70,
                  width: 160,
                  fontsize: 25,
                  radius: 20,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Adduser()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 10,),

            CustomButton(
              text: "Show All Booking",
              height: 70,
              width: 300,
              fontsize: 25,
              radius: 20,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Recent()),
                );
              },
            ),

            SizedBox(height: 10,),
            CustomButton(
              text: "Show Reviews ★",
              height: 70,
              width: 350,
              fontsize: 25,
              radius: 20,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Review()),
                );
              },
            ),



      ],
    );
  }
}