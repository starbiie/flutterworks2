import 'package:flutter/material.dart';

import 'list.dart';
class buld extends StatefulWidget {
  const buld({super.key});

  @override
  State<buld> createState() => _buldState();
}

class _buldState extends State<buld> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Massege'),
        centerTitle: true,
      ),
      body: ListView.builder(
itemCount: stup.length,
        itemBuilder: (context,index){
  return ListTile(
    title: Text(
      stup[index]['name'],
    ),
    subtitle: Text(stup[index]['sub']),
    trailing: stup[index]['icon'],
    leading: ClipOval(
      child: Container(
        height: 60,
        width:60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: stup[index]['image']),
        ),
      ),
    ),
  );
        },


      ),
    );
  }
}
