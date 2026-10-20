import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/ctabbar.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/customers/cbarber.dart';

class Cservice extends StatefulWidget {
  const Cservice({super.key});

  @override
  State<Cservice> createState() => _CserviceState();
}

class _CserviceState extends State<Cservice> {
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
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CTabbar()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.black),
                    const Text(
                      "Back",
                      style: TextStyle(
                        fontFamily: "serif",
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.topLeft,
                height: 80,
                child: Image.asset(i2[0], fit: BoxFit.contain),
              ),
            ],
          ),
          Heading(title: "Choose Service", size: 40),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Image.asset(i2[9], fit: BoxFit.contain,height: 100,),

                  Container(
                    padding: EdgeInsets.all(6),
                    
                    decoration: BoxDecoration(
                    color: AppColors.label,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    width:150,

                    child:Column(
                      children: [
                        Text("Haircut",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "serif",
                          fontWeight: FontWeight.bold

                        ),),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee_sharp,size: 16,),
                        Text("150",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "serif",

                        ),),

                        ],
                      ),
                       
                        
                       Text("Classic or trendy cuts styled to suit you",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "serif",

                        ),),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                          text: "CHOOSE",
                          fontsize: 14, 
                          width: 70,  
                          radius: 19,
                                     
                          onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Cbarber()),
                           );
                         },
                      )
                        ],
                      )

                      ],
                    )

                  
                    ),
            ],
          ),
        
        SizedBox(height:12),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    
                    decoration: BoxDecoration(
                    color: AppColors.label,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    width:150,

                    child:Column(
                      children: [
                        Text("Beard Trim",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "serif",
                          fontWeight: FontWeight.bold

                        ),),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee_sharp,size: 16,),
                        Text("80",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "serif",

                        ),),

                        ],
                      ),
                       
                        
                       Text("Shape and trim for a clean ,sharp look",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "serif",

                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                          text: "CHOOSE",
                          fontsize: 14, 
                          width: 70,  
                          radius: 19,
                                     
                          onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Cbarber()),
                           );
                         },
                      )
                        ],
                      )

                      ],
                    )

                  
                    ),
              
              Image.asset(i2[10], fit: BoxFit.contain,height: 120,),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Image.asset(i2[11], fit: BoxFit.contain,height: 100,),

                  Container(
                    padding: EdgeInsets.all(6),
                    
                    decoration: BoxDecoration(
                    color: AppColors.label,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    width:150,

                    child:Column(
                      children: [
                        Text("Hair+Beard Combo",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "serif",
                          fontWeight: FontWeight.bold

                        ),),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee_sharp,size: 16,),
                        Text("200",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "serif",

                        ),),

                        ],
                      ),
                       
                        
                       Text("Full haircut with beard styling",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "serif",

                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                          text: "CHOOSE",
                          fontsize: 14, 
                          width: 70,  
                          radius: 19,
                                     
                          onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Cbarber()),
                           );
                         },
                      )
                        ],
                      )

                      ],
                    )

                  
                    ),
            ],
          ),
        
        SizedBox(height:12),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    
                    decoration: BoxDecoration(
                    color: AppColors.label,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    width:150,

                    child:Column(
                      children: [
                        Text("Head Massage",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "serif",
                          fontWeight: FontWeight.bold

                        ),),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee_sharp,size: 16,),
                        Text("100",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "serif",

                        ),),

                        ],
                      ),
                       
                        
                       Text("Relaxing massage to ease tension",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "serif",

                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                          text: "CHOOSE",
                          fontsize: 14, 
                          width: 70,  
                          radius: 19,
                                     
                          onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Cbarber()),
                           );
                         },
                      )
                        ],
                      )

                      ],
                    )

                  
                    ),
              
              Image.asset(i2[12], fit: BoxFit.contain,height: 120,),

            ],
          ),

        SizedBox(height: 20,)
        ],
      ),
    );
  }
}
