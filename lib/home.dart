import 'package:flutter/material.dart';

import 'homlist.dart';
class homeei extends StatefulWidget {
  const homeei({super.key});

  @override
  State<homeei> createState() => _homeeiState();
}

class _homeeiState extends State<homeei> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),filled: true,fillColor: Colors.white,hintText: "Search...",suffixIcon: Icon(Icons.search)),)
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
              height: 100,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stt.length,itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            fit:BoxFit.cover,
                            image: AssetImage("img/pexels-photo-1366907.jpeg"))),
                    child: Column(
                      children: [
                        Text(stt[index]['title']),
                        Text(stt[index]['sub']),


                      ],
                    ),
                  ),
               );
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
