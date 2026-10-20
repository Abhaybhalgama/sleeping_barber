import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/customers/dashboard.dart';
import 'package:sleeping_barber/screens/customers/history.dart';
import 'package:sleeping_barber/screens/customers/recent.dart';
import 'package:sleeping_barber/screens/customers/viewprofile.dart';
import 'package:sleeping_barber/screens/login.dart';

class CTabbar extends StatefulWidget {
  const CTabbar({super.key});

  @override
  State<CTabbar> createState() => _TabbarState();
}

class _TabbarState extends State<CTabbar> {
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
            Dashboard(),
            Recent(),
            History(),
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
              Tab(icon: Icon(Icons.queue_sharp), text: 'Myslots'),
              Tab(icon: Icon(Icons.history), text: 'History'),
              Tab(icon: Icon(Icons.person), text: 'Account'),
            ],


          ),
        ),
      ),
    );
 
  }
}