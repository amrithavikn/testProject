import 'package:flutter/material.dart';

class SelectRepeatation extends StatelessWidget{
  TextEditingController countController =TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [

         TextField(
           controller: countController,

         ),
         ElevatedButton(onPressed:  () async{

         Navigator.pop(context, countController..text);

         }, child: Text("Submit"))
       ],
     ),
   );
  }

}