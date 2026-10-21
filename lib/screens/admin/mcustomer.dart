import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';

class Mcustomer extends StatefulWidget {
  const Mcustomer({super.key});

  @override
  State<Mcustomer> createState() => _McustomerState();
}

class _McustomerState extends State<Mcustomer> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
          
        Heading(title: "Manage Customers", size: 38,),

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
                    Text("Phone: 1234567890",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                    
                    SizedBox(height: 12),
                  
                  ],


                ),

                Column(
                  children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, color: Colors.green),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),


                  
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
                     Text("Phone: 1234567890",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                   
                  
                  ],


                ),

                Column(
                  children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, color: Colors.green),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),

                  
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
                    Text("Phone: 1234567890",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                  ],


                ),

                Column(
                  children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, color: Colors.green),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),

                  
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
                     Text("Phone: 1234567890",
                    style: TextStyle(
                      fontSize:15,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold
                    ),),
                 ],


                ),

                Column(
                  children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, color: Colors.green),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                  
                  ],


                ),
              ],
            ),
          ),
      SizedBox(height:30 ,)
      ],
    );
  }
}