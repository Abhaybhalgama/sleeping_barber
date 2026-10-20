import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/btabbar.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
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
          Heading(title: "Reviews", size: 40),
          
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
                    Text("Rahul Sharma",
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
                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    )
                  
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
                    SizedBox(height: 35,),

                  
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
                    Text("Aman Verma",
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

                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    )

                  
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

                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    )
                 
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
                    SizedBox(height: 35,),
                  
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
                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    )
                  
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
                    SizedBox(height: 35,),

                  
                  ],


                ),
              ],
            ),
          )
          


        ],
      ),

    );
  }
}