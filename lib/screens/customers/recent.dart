import 'package:flutter/material.dart';
import 'package:sleeping_barber/controls/heading.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return ListView(

  children: [

          Heading(title: "Recent Bookings", size: 40),

          

  ],

    );
  }
}