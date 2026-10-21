import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return ListView(

  children: [

          Heading(title: "Recent Bookings", size: 40),
          Container(
            
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.label,
              borderRadius: BorderRadius.circular(9)
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
               crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [
                    Text("Vikram Singh",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("From : Rajkot",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Haircut + Beard Trim",
                      style: TextStyle(
                        fontSize:15,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold
                      ),),
                    
                    SizedBox(height: 12),
                    CustomButton(
                      text: "PENDING",
                      width: 110,
                      height: 40,
                      fontsize: 13,
                      backgroundColor:AppColors.pending,

                       onPressed: () {  },)
                  
                  ],


                ),

                Column(
                  children: [
                    Text("25/7/2026",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("12:00",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 30,),
                    CustomButton(
                      text: "CANCLE",
                      width: 110,
                      height: 40,
                      fontsize: 13,
                      backgroundColor:AppColors.cancel,

                       onPressed: () {  },)

                  
                  ],


                ),
              ],
            ),
          ),
        
     Container(
            
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.label,
              borderRadius: BorderRadius.circular(9)
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
               crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [
                    Text("Arjun Mehta",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("From : Rajkot",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Haircut",
                      style: TextStyle(
                        fontSize:15,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold
                      ),),
                    
                    SizedBox(height: 12),
                    CustomButton(
                      text: "PENDING",
                      width: 110,
                      height: 40,
                      fontsize: 13,
                      backgroundColor:AppColors.pending,

                       onPressed: () {  },)
                  
                  ],


                ),

                Column(
                  children: [
                    Text("25/7/2026",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("11:00",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 35,),
                    CustomButton(
                      text: "CANCLE",
                      width: 110,
                      height: 40,
                      fontsize: 13,
                      backgroundColor:AppColors.cancel,

                       onPressed: () {  },)

                  
                  ],


                ),
              ],
            ),
          ),
          Container(
            
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.label,
              borderRadius: BorderRadius.circular(9)
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [
                    Text("Priya patel",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("From : Rajkot",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Head Massage",
                      style: TextStyle(
                        fontSize:15,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold
                      ),),
                    
                    SizedBox(height: 12),
                    CustomButton(
                      text: "CONFIRMED",
                      width: 110,
                      height: 40,
                      fontsize: 13,
                      backgroundColor:AppColors.accept,

                       onPressed: () {  },)
                  
                  ],


                ),

                Column(
                  children: [
                    Text("24/7/2026",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("12:00",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 70,),
                  
                  ],


                ),
              ],
            ),
          ),
          Container(
            
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.label,
              borderRadius: BorderRadius.circular(9)
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
               crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [
                    Text("Karan Mehta",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("From : Rajkot",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Beard Trim",
                      style: TextStyle(
                        fontSize:15,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold
                      ),),
                    
                    SizedBox(height: 12),
                    CustomButton(
                      text: "CONFIRMED",
                      width: 110,
                      height: 40,
                      fontsize: 13,
                      backgroundColor:AppColors.accept,

                       onPressed: () {  },)
                  
                  ],


                ),

                Column(
                  children: [
                    Text("24/7/2026",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    Text("11:00",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 70,),

                  
                  ],


                ),
              ],
            ),
          )



  ],

    );
  }
}