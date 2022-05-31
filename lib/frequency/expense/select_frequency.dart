import 'package:flutter/material.dart';

class SelectFrequency extends StatelessWidget {
  // const SelectFrequency({Key? key}) : super(key: key);
  List<String> frequency = ["One Time","Daily", "Weekly", "Monthly", "Yearly"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Frequency'),
      ),
      body: ListView(
        shrinkWrap: true,
        itemExtent: MediaQuery.of(context).size.height/19,
        children: [
          ListTile(
            onTap: () async {
              Navigator.pop(context, "OneTime");
            },
            leading: Text("One Time"),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context, "Day");
            },
            leading: Text("Day"),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context, "Weekly");
            },
            leading: Text("Week"),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context, "Monthly");
            },
            leading: Text("Monthly"),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context, "Yearly");
            },
            leading: Text("Yearly"),
          ),
        ],
      ),
    );
  }
}
