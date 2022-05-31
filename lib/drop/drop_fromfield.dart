// import 'package:dio/dio.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// import 'user_model.dart';
//
//
//
// class DropDownFormField extends StatefulWidget {
//   @override
//   _DropDownFormFieldState createState() => _DropDownFormFieldState();
// }
//
// class _DropDownFormFieldState extends State<DropDownFormField> {
//   final List<Map<String, dynamic>> deposit_list_dropdown = [
//     {"label": "a", "role": 0}, {"label": "b", "role": 1},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("DropdownSearch Demo")),
//       body: SizedBox(
//     width: MediaQuery.of(context).size.width,
//     height: 40,
//     child: DropdownFormField<Map<String, dynamic>>(
//     dropdownHeight: dropDownHeight,
//     decoration: GlobalStyles.dropDownClass(labelTextStr: ""),
//     displayItemFn: (dynamic item) => Text(
//     (item ?? {})['label'] ?? '',
//     style: TextStyle(fontSize: 13, color: Colors.grey),
//     ),
//     dropdownColor: Colors.black,
//     findFn: (dynamic str) async => deposit_list_dropdown,
//     selectedFn: (dynamic item1, dynamic item2) {
//     if (item1 != null && item2 != null) {
//     return item1['label'] == item2['label'];
//     }
//     return false;
//     },
//     dropdownItemFn: (dynamic item, int position, bool focused,
//     bool selected, Function() onTap) =>
//     ListTile(
//     title: Text(item['label'],style: TextStyle(color: Colors.white),),
//     tileColor: focused
//     ? Color.fromARGB(20, 0, 0, 0)
//         : Colors.transparent,
//     onTap: () {
//     depositAddress = deposit_list_dropdown[position]['role'];
//     print(depositAddress);
//     onTap();
//     },
//     ),
//     ),
//     );
//   }
//
