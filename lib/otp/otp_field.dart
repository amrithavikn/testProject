import 'package:flutter/material.dart';

class OtpField extends StatefulWidget{
  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/10,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorRadius: Radius.circular(16.0),
                    cursorWidth: 1.0,
                cursorColor: Colors.red,
               //    mouseCursor: ,
                   // cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),
                        disabledBorder: InputBorder.none,
                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/10,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/10,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),

                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/10,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),

                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/10,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),

                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/10,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),

                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );


  }
}