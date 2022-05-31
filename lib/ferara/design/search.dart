import 'package:flutter/material.dart';

class Search extends StatefulWidget {


  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          Navigator.pop(context);
        },),
        backgroundColor:Color(0xff2349A4),


        title: const Text("Search"
            ),
      ),

      body: Container(

      ),
    );
  }
}
