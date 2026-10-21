import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/customers/bookslot.dart';
import 'package:sleeping_barber/screens/customers/cservice.dart';

class Cbarber extends StatefulWidget {
  const Cbarber({super.key});

  @override
  State<Cbarber> createState() => _CbarberState();
}

class _CbarberState extends State<Cbarber> {
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
                    MaterialPageRoute(builder: (context) => const Cservice()),
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
          Heading(title: "Choose Barber", size: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(i2[13], fit: BoxFit.contain),
              ),

              Container(
                padding: EdgeInsets.all(6),

                decoration: BoxDecoration(
                  color: AppColors.label,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 150,

                child: Column(
                  children: [
                    Text(
                      "Vikram Singh",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 19,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "- Specialist in fades &  classic cuts",
                      style: TextStyle(fontSize: 14, fontFamily: "serif",fontWeight: FontWeight.bold),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: "CHOOSE",
                          fontsize: 14,
                          width: 90,
                          radius: 19,
                          padding: EdgeInsets.only(left: 7, right: 4),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bookslot(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(12),

                decoration: BoxDecoration(
                  color: AppColors.label,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 150,

                child: Column(
                  children: [
                    Text(
                      "Arjun Mehta",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 19,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "- Beard styling expert",
                      style: TextStyle(fontSize: 14, fontFamily: "serif",fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: "CHOOSE",
                          fontsize: 14,
                          width: 90,
                          radius: 19,
                          padding: EdgeInsets.only(left: 7, right: 4),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bookslot(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(i2[13], fit: BoxFit.contain),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(i2[13], fit: BoxFit.contain),
              ),

              Container(
                padding: EdgeInsets.all(6),

                decoration: BoxDecoration(
                  color: AppColors.label,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 150,

                child: Column(
                  children: [
                    Text(
                      "Rohan Desai",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 19,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),

                    Text(
                      "- 10+ years experience master barber",
                      style: TextStyle(fontSize: 14, fontFamily: "serif",fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: "CHOOSE",
                          fontsize: 14,
                          width: 90,
                          radius: 19,
                          padding: EdgeInsets.only(left: 7, right: 4),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bookslot(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(12),

                decoration: BoxDecoration(
                  color: AppColors.label,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 150,

                child: Column(
                  children: [
                    Text(
                      "Roshni khan",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 19,
                        fontFamily: "serif",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "- Modern styles & head massage specialist",
                      style: TextStyle(fontSize: 14, fontFamily: "serif",fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: "CHOOSE",
                          fontsize: 14,
                          width: 90,
                          radius: 19,
                          padding: EdgeInsets.only(left: 7, right: 4),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bookslot(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(i2[13], fit: BoxFit.contain),
              ),
            ],
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
