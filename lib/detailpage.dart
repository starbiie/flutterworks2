import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
   DetailPage({super.key,required this.title,required this.sub,required this.description});
var title, sub,description;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
   
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(widget.title)),
              Center(child: Text(widget.sub),),
              Center(child: Text(widget.description),),

            ],
          ),
        ),

      ),
    );
  }
}
