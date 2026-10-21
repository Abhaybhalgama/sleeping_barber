import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/ctabbar.dart';
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

  final dateController = TextEditingController();
  final timeController = TextEditingController();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  Future<void> pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
        timeController.text = picked.format(context);
      });
    }
  }

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
            padding: EdgeInsets.only(top: 25, left: 4, right: 4, bottom: 10),
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
                          "Service :",
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
                          initialValue: 'Haircut',
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
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          "Barber :",
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
                          initialValue: 'Vikram Singh',
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
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          "Date :",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Expanded(
                        child: TextFormField(
                          controller: dateController,
                          readOnly: true,
                          onTap: pickDate,
                          validator: (value) {
                            if (selectedDate == null) {
                              return "Please select date";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Select date",
                            suffixIcon: Icon(Icons.calendar_month),
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
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          "Time :",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Expanded(
                        child: TextFormField(
                          controller: timeController,
                          readOnly: true,
                          onTap: pickTime,
                          validator: (value) {
                            if (selectedTime == null) {
                              return "Please select time";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Select time",
                            suffixIcon: Icon(Icons.access_time),
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
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: CustomButton(
              width: 150,
              text: "Book Slot",
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CTabbar()),
                  );
                }
              },
            ),
          ),
          SizedBox(height: 20),
          Heading(title: "Booked Slots : ", size: 25),

          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.label,
                  borderRadius: BorderRadius.circular(9),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vikram Singh",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "From : Rajkot",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Haircut + Beard Trim",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 12),
                        CustomButton(
                          text: "BOOKED",
                          width: 110,
                          height: 40,
                          fontsize: 13,
                          backgroundColor: AppColors.done,

                          onPressed: () {},
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          "25/7/2026",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "12:00",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 35),
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
                  borderRadius: BorderRadius.circular(9),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "vikram Singh",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "From : Rajkot",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Beard Trim",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 12),
                        CustomButton(
                          text: "BOOKED",
                          width: 110,
                          height: 40,
                          fontsize: 13,
                          backgroundColor: AppColors.done,

                          onPressed: () {},
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          "25/7/2026",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "11:00",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "serif",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 70),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}