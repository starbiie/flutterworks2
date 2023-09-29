import 'package:flutter/material.dart';
class tab extends StatefulWidget {
  const tab({super.key});

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text("TabBar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            bottom: TabBar(tabs:[ Tab(icon: Column(
              children: [
                Icon(Icons.car_crash),
                Text("car"),
              ],
            ),),
              Tab(icon: Column(
                children: [
                  Icon(Icons.bike_scooter),
                  Text("Bisycle"),
                ],
              ),),
              Tab(icon: Column(
                children: [
                  Icon(Icons.directions_boat_filled_outlined),
                  Text("Boat"),
                ],
              ),),
          ],
            ),
          ),
          body: TabBarView(children:[
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.car_crash,size: 35,),
                Text("Bisycle",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bike_scooter,size: 35,),
                Text("Bisycle",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_boat_filled_outlined,size: 35,),
                Text("Bisycle",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
          ] ),
        ),
      ),
    );
  }
}
