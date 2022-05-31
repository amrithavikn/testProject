import 'package:flutter/material.dart';


class TextFieldStyle {

  static InputDecoration textField(context,
      {String hintTextStr = "", String labelTextStr = ""}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(6),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xffC9C9C9)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xffC9C9C9),)
      ),
      errorBorder: InputBorder.none,

      labelText: labelTextStr,
      labelStyle: const TextStyle(
        color: Color(0xff1A1A1A), fontSize: 13,),

      hintText: hintTextStr,

      hintStyle: const TextStyle(color: const Color(0xff1A1A1A), fontSize: 12,),

    );
  } static InputDecoration textFieldIcon(context,
      {String hintTextStr = "", String labelTextStr = ""}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(6),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xffC9C9C9)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xffC9C9C9),)
      ),
      errorBorder: InputBorder.none,

      suffixIcon: Icon(Icons.arrow_drop_down,color: Color(0xff000000),),

      labelText: labelTextStr,
      labelStyle: const TextStyle(
        color: Color(0xff1A1A1A), fontSize: 13,),

      hintText: hintTextStr,

      hintStyle: const TextStyle(color: const Color(0xff1A1A1A), fontSize: 12,),

    );
  }

}