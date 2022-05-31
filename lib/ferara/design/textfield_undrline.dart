import 'package:flutter/material.dart';

import 'decoration.dart';

class TextFieldUnderLine extends StatefulWidget{
  @override
  State<TextFieldUnderLine> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldUnderLine> {
  TextEditingController noteController=TextEditingController();
  FocusNode noteNode=FocusNode();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
         children: [
           SizedBox(height: 20,),
           Container(
               width: MediaQuery.of(context).size.width / 1.1,
               height: MediaQuery.of(context).size.height / 17,
               decoration: BoxDecoration(
                   border: Border.all(color: Colors.blueAccent)
               ),
               child: TextField(
                   style:  const TextStyle(
                     decoration: TextDecoration.none,
                   ),
                   enableSuggestions: false,
                   autocorrect: false,
                   controller: noteController,
                   focusNode: noteNode,
                   onTap: () {},
                   minLines: 1,
                   maxLines: 5,
                   textCapitalization: TextCapitalization.words,
                   keyboardType: TextInputType.text,
                   decoration: const InputDecoration(
                     contentPadding: EdgeInsets.all(6),
                     focusedBorder: InputBorder.none,
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue),
                     ),                     errorBorder: InputBorder.none,

                     labelText: "TextStr",
                     labelStyle: TextStyle(
                       color: Color(0xff1A1A1A), fontSize: 13,),

                     hintText: "TextStr",

                     hintStyle: TextStyle(color: Color(0xff1A1A1A), fontSize: 12,),

                   ))),

           SizedBox(height: 20,),
           Container(
               width: MediaQuery.of(context).size.width / 1.1,
               height: MediaQuery.of(context).size.height / 9,
               child: TextField(
                   style:  const TextStyle(
                     decoration: TextDecoration.none,
                   ),
                   enableSuggestions: false,
                   autocorrect: false,
                   onTap: () {},
                   minLines: 1,
                   maxLines: 5,
                   textCapitalization: TextCapitalization.words,
                   keyboardType: TextInputType.text,
                   decoration: const InputDecoration(
                     contentPadding: EdgeInsets.all(6),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(4)),
                       borderSide: BorderSide(width: 1, color: Color(0xffC9C9C9)),
                     ),
                     enabledBorder: UnderlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(4)),

                       borderSide: BorderSide(color: Colors.red),
                     ),


                     errorBorder: InputBorder.none,

                     labelText: "labelTextStr",
                     labelStyle: TextStyle(
                       color: Color(0xff1A1A1A), fontSize: 13,),

                     hintText: "hintTextStr",

                     hintStyle: TextStyle(color: Color(0xff1A1A1A), fontSize: 12,),

                   ))),
           SizedBox(height: 20,),

           TextField(
             decoration: InputDecoration(
               labelText: 'Name',
               hintText: 'Enter your name',
             //  errorText: _errorText,
               // Enabled Border
               enabledBorder: const UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
               ),
               // Focused Border
               focusedBorder: const UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.purple, width: 5),
               ),
               // Error Border
               errorBorder: const UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.yellow, width: 5),
               ),
               // Focused Error Border
               focusedErrorBorder: const UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.red, width: 5),
               ),
             ),
           ),
           TextField(
             decoration: InputDecoration(
               labelText: 'Name',
               hintText: 'Enter your name',
              // errorText: _errorText,
             ),
           ),
         ],
       ),
     ),
   );
  }
}