import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
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
        ],
      ),
    );
  }
}