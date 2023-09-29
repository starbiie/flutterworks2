import 'package:flutter/material.dart';

import 'homlist.dart';
class hotel extends StatefulWidget {
  const hotel({super.key});

  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("Find a place to stay....",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
          ),
    SizedBox(height: 20,),
    SizedBox(
    height: 680,

    child: ListView.builder(

    itemCount: sttf.length,itemBuilder: (context,index){

    return Container(
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 8.0,),
    child: Container(height: 100,width: 350,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.red,image: DecorationImage(fit: BoxFit.fitWidth,image: sttf[index]['history']))),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 8.0,),
    child: Card(elevation: 10,child: Container(height: 100,width: 350,decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Colors.white,),
    child: Column(
      children: [
        ListTile(title:Text( sttf[index]['title']),subtitle: Text(sttf[index]['sub'],),trailing:Column(
          children: [
            Text( sttf[index]['money'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Pernight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),


          ],
        ),


        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,),
          child: Row(
            children: [
              // Image.network("https://cdn-icons-png.flaticon.com/128/1040/1040230.png",width: 17,),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Image.network("https://cdn-icons-png.flaticon.com/128/1040/1040230.png",width: 17,),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Image.network("https://cdn-icons-png.flaticon.com/128/1040/1040230.png",width: 17,),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Image.network("https://cdn-icons-png.flaticon.com/128/1040/1040230.png",width: 17,),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Image.network("https://cdn-icons-png.flaticon.com/128/1040/1040230.png",width: 17,),
              // ),
Icon(Icons.star,weight:2,color: Colors.yellow,),
              Icon(Icons.star,weight:2,color: Colors.yellow,),
              Icon(Icons.star,weight:2,color: Colors.yellow,),Icon(Icons.star_half_outlined,weight:2,color: Colors.yellow,),


            ],
          ),
        ),

      ],
    ),


    ),),

    ),

      Divider(thickness: 2,)
    ],
    ),
    );

    }
    ),

      ),

   ] ),
    );
  }
}
