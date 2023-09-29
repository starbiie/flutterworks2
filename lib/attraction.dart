import 'package:flutter/material.dart';

import 'homlist.dart';
class attraction extends StatefulWidget {
  const attraction({super.key});

  @override
  State<attraction> createState() => _attractionState();
}

class _attractionState extends State<attraction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(children:[
      SizedBox(height: 10,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text("Nature",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          Icon(Icons.arrow_forward,size: 35,),

        ],
      ),

        SizedBox(
height: 190,
          child: ListView.builder(scrollDirection: Axis.horizontal,

              itemCount: stt.length,itemBuilder: (context,index){

            return Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,),
                    child: Container(height: 100,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.red,image: DecorationImage(fit: BoxFit.cover,image: stt[index]['image']))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,),
                    child: Card(elevation: 10,child: Container(height: 60,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Colors.white,),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(stt[index]['title'],style: TextStyle(fontWeight: FontWeight.bold,),),
                          Text(stt[index]['sub']),
                        ],
                      ),)),

                  ),
                ],
              ),
            );

          }
          ),

        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            Icon(Icons.arrow_forward,size: 35,),

          ],
        ),

        SizedBox(
          height: 190,
          child: ListView.builder(scrollDirection: Axis.horizontal,

              itemCount: stth.length,itemBuilder: (context,index){

                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,),
                        child: Container(height: 100,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.red,image: DecorationImage(fit: BoxFit.cover,image: stth[index]['history']))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,),
                        child: Card(elevation: 10,child: Container(height: 60,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Colors.white,),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(stth[index]['title'],style: TextStyle(fontWeight: FontWeight.bold,),),
                              Text(stth[index]['sub']),
                            ],
                          ),)),

                      ),
                    ],
                  ),
                );

              }
          ),

        ),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Religious",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            Icon(Icons.arrow_forward,size: 35,),

          ],
        ),

        SizedBox(
          height: 190,
          child: ListView.builder(scrollDirection: Axis.horizontal,

              itemCount: sttp.length,itemBuilder: (context,index){

                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,),
                        child: Container(height: 100,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.red,image: DecorationImage(fit: BoxFit.cover,image: sttp[index]['history']))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,),
                        child: Card(elevation: 10,child: Container(height: 60,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Colors.white,),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(sttp[index]['title'],style: TextStyle(fontWeight: FontWeight.bold,),),
                              Text(sttp[index]['sub']),
                            ],
                          ),)),

                      ),
                    ],
                  ),
                );

              }
          ),

        ),

    ]),
    );
  }
}
