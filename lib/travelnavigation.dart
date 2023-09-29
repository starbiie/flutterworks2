import 'package:first_app/attraction.dart';
import 'package:first_app/bottom.dart';
import 'package:first_app/home.dart';
import 'package:first_app/hotel.dart';
import 'package:flutter/material.dart';
class travelnavigation extends StatefulWidget {
  const travelnavigation({super.key});

  @override
  State<travelnavigation> createState() => _travelnavigationState();
}

class _travelnavigationState extends State<travelnavigation> {
  var indexnum=0;
  List trav=[
    homeei(),
    attraction(),
    prof(),
    hotel()

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:  Icon(Icons.home,color: Colors.black,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.location_on_sharp,color: Colors.black,),label: ""),
        BottomNavigationBarItem(icon:  Icon(Icons.person_pin,color: Colors.black,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.hotel_rounded,color: Colors.black,),label: ""),

      ],currentIndex: indexnum,
        onTap: (int index){setState(() {
indexnum=index;
        });},

      ),
      body: trav.elementAt(indexnum),
    );
  }
}
