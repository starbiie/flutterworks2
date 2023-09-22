

import 'package:flutter/material.dart';

import 'gridlist.dart';
class gridd extends StatefulWidget {
  const gridd({super.key});

  @override
  State<gridd> createState() => _griddState();
}

class _griddState extends State<gridd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(


          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUT9LcsY5vNFBuX0-jF9ni2VlXBYz7Ilsn3Q&usqp=CAU')),

  ),
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
      Text("My dashbord",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          SizedBox(height: 30,),

          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: sup.length,
        itemBuilder: (context,index){
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(

              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                          ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      sup[index]['icon'],
                      sup[index]['label'],
                    ],
                  ),
                ),
            ),

        );
        },
      ),
          ),
  ],
),

          ),

      ),
    );
  }
}
