import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'package:sleeping_barber/screens/customers/cbarber.dart';

class Bookslot extends StatefulWidget {
  const Bookslot({super.key});

  @override
  State<Bookslot> createState() => _BookslotState();
}

class _BookslotState extends State<Bookslot> {
    final formkey = GlobalKey<FormState>();

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
                    MaterialPageRoute(builder: (context) => const Cbarber()),
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
          Heading(title: "Book Your Slot", size: 40),

          Container(
            padding: EdgeInsets.only(top: 50, left: 4, right: 4,bottom:50),
            margin: EdgeInsets.only(left: 10, right: 10, top: 40, bottom: 19),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textBlack, width: 2),
              borderRadius: BorderRadius.circular(10),
           ),
           child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 110,
                          child: Text(
                            "Name :",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'serif',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    
                        Expanded(
                          child: TextFormField(
                            readOnly: true,
                            initialValue: 'Abhay',
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.textfield,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ])),
         ),
        ],
      ),
    );
  }
}