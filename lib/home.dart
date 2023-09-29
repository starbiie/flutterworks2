import 'package:first_app/detailpage.dart';
import 'package:flutter/material.dart';

import 'homlist.dart';
class homeei extends StatefulWidget {
  const homeei({super.key});

  @override
  State<homeei> createState() => _homeeiState();
}

class _homeeiState extends State<homeei> {
  get index => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(55)),image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/pexels-photo-2113563.jpeg"))),
              child: Column(
                children: [
                  SizedBox(height: 85,),
                  Text("Where you want to go",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
Padding(padding: EdgeInsets.all(30),
    child:
                  TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(35)),filled: true,fillColor: Colors.white,hintText: "Search...",suffixIcon: Icon(Icons.search)),)
    ),
                ],
              ),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Suggestions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Icon(Icons.arrow_forward,size: 35,),

                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 180,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(stt[index]['title'],style: TextStyle(fontWeight: FontWeight.bold,),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Text(stt[index]['sub']),
                                ),
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
                    child: Text("Top Rated",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Icon(Icons.arrow_forward,size: 35,),

                ],
              ),
              SizedBox(
                height: 200,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stt2.length,itemBuilder: (context,index){

                  return Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,),
                          child: Container(height: 100,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.red,image: DecorationImage(fit: BoxFit.cover,image: stt2[index]['image']))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,),
                          child: Card(elevation: 10,child: Container(height: 60,width: 150,decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Colors.white,),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(stt2[index]['title'],style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Text(stt2[index]['sub']),
                                ),
                              ],
                            ),)),

                        ),
                      ],
                    ),
                  );

                }
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
