import 'package:flutter/material.dart';
class rock extends StatefulWidget {
  const rock({super.key});

  @override
  State<rock> createState() => _rockState();
}

class _rockState extends State<rock> {
  final _formkey=GlobalKey();
  var pass=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("img/download (7).jpg"))),child:Column(children: [
        SizedBox(height: 200,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(key: _formkey,child:   TextFormField(decoration: InputDecoration(filled: true,fillColor: Colors.white,enabledBorder: OutlineInputBorder(

          ),
            labelText: "Email",
            suffixIcon: Icon(Icons.attachment_sharp,color: Colors.black,size: 30,),
            labelStyle:TextStyle( fontSize: 25),
          ),)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(

            decoration: InputDecoration(filled: true,fillColor:Colors.white ,enabledBorder: OutlineInputBorder(),labelText: "Password" ,suffixIcon: Icon(pass?Icons.visibility:Icons.visibility_off,color: Colors.black,),labelStyle: TextStyle(fontSize: 25)),
            obscureText: !pass,
            obscuringCharacter: "*",
onTap:(){
              setState(() {

                pass=!pass;
              });
},
          ),
        ),
        SizedBox(height: 25,),
        InkWell(
            onTap: (){},
            child: Container(height: 55,width: 300,decoration: BoxDecoration(color: Colors.black54,border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(15),),alignment: Alignment.center,child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)),
     SizedBox(height: 20,),
        Text("Forgott Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),),
SizedBox(height: 35,),
        InkWell(
            onTap: (){},
            child: Container(height: 55,width: 300,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),),alignment: Alignment.center,child: Row(
              children: [
                Image.asset("img/images (5).jpg"),
                Text("Sign in With Google",style: TextStyle(fontSize: 20),),
              ],
            ),)),

       SizedBox(height: 25,),
        InkWell(
            onTap: (){},
            child: Container(height: 55,width: 300,decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(15),),alignment: Alignment.center,child: Row(
              children: [
                Image.asset("img/download (9).jpg"),
                Text("Sign in With Facebook",style: TextStyle(fontSize: 20,),),
              ],
            ),)),

      ],),),

    );
  }
}
