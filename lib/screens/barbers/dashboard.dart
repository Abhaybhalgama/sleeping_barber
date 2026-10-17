import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/barbers/history.dart';
import 'package:sleeping_barber/screens/barbers/recent.dart';
import 'package:sleeping_barber/screens/barbers/review.dart';
import 'package:sleeping_barber/screens/barbers/service.dart';
import 'package:sleeping_barber/screens/barbers/viewprofile.dart';
import 'package:sleeping_barber/screens/login.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor:AppColors.background,
        
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top:7 ),
              height: 80,
           child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Image.asset(i2[0], fit: BoxFit.contain),
                  CustomButton(
                    text: 'Log out',
                    height: 35,
                    width: 130,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                  ),
                ],
              ),
            ),

           
          Expanded(
            child:TabBarView(children: [
             ListView(
                  children: [
                    Heading(title: "Welcome Barber", size: 40),
                    
                    Container(
                      margin: const EdgeInsets.only(left: 5, bottom: 40,top:2),
                      child: Row(
                        children: [
                          Image.asset(i2[1], fit: BoxFit.contain),
                          Image.asset(i2[2], fit: BoxFit.contain),
                        ],
                      ),
                    ),
                        
                  const SizedBox(height: 12),
              
                    Column(
                      children: [
                        CustomButton(
                          text: "Show All Booking",
                          height: 70,
                          width: 350,
                          fontsize: 25,
                          radius: 20,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecentBook()),
                            );
                          },
                        ),
                        const SizedBox(height: 12),
                        CustomButton(
                          text: "Check Reviews ★",
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
                    ),
                  ],
                ),

            History(),
            Service(),
            Profile()  
            ])

              ),
            
         
]),
        


        bottomNavigationBar: Material(
          color: AppColors.navbar, 
          child: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor:  Colors.black,
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.history), text: 'History'),
              Tab(icon: Icon(Icons.design_services_outlined), text: 'Service'),
              Tab(icon: Icon(Icons.person), text: 'Account'),
            ],


          ),
        ),
      ),
    );
  }
}