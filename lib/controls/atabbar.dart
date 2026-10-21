import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/admin/dashboard.dart';
import 'package:sleeping_barber/screens/admin/mbarber.dart';
import 'package:sleeping_barber/screens/admin/mcustomer.dart';
import 'package:sleeping_barber/screens/admin/recent.dart';
import 'package:sleeping_barber/screens/admin/mservice.dart';
import 'package:sleeping_barber/screens/admin/viewprofile.dart';
import 'package:sleeping_barber/screens/login.dart';

class ATabbar extends StatefulWidget {
  const ATabbar({super.key});

  @override
  State<ATabbar> createState() => _TabbarState();
}

class _TabbarState extends State<ATabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
            MBarber(),
            Mservice(),
            Mcustomer(),
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
              Tab(icon: Icon(Icons.home, size: 30,), ),
              Tab(icon: Icon(Icons.face_retouching_natural,size: 30,), ),
              Tab(icon: Icon(Icons.cut,size: 30,), ),
              Tab(icon: Icon(Icons.people,size: 30,),),
              Tab(icon: Icon(Icons.person,size: 30,), ),
            ],


          ),
        ),
      ),
    );
 
  }
}