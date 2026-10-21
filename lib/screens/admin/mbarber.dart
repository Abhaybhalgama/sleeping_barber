import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/button.dart';
import 'package:sleeping_barber/controls/heading.dart';
import 'package:sleeping_barber/resources/colors.dart';
import 'package:sleeping_barber/resources/images.dart';

class MBarber extends StatefulWidget {
  const MBarber({super.key});

  @override
  State<MBarber> createState() => _MBarberState();
}

class _MBarberState extends State<MBarber> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Heading(title: "Manage Barbers", size: 40),

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
                  SizedBox(height: 5),
                  Text(
                    "- Specialist in fades &  classic cuts",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),

                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
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
                  SizedBox(height: 5),
                  Text(
                    "- Beard styling expert",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),

                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
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
                  SizedBox(height: 5),

                  Text(
                    "- 10+ years experience master barber",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),

                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
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
                  SizedBox(height: 5),
                  Text(
                    "- Modern styles & head massage specialist",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "serif",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),

                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
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
    );
  }
}
