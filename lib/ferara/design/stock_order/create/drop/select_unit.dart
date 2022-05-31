import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectUnit extends StatefulWidget {
  const SelectUnit({Key? key}) : super(key: key);

  @override
  State<SelectUnit> createState() => _SelectUnitState();
}

class _SelectUnitState extends State<SelectUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 8,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset(0.0, 1.4),
                      end: FractionalOffset(0.4, 0.0),
                      colors: <Color>[Color(0xff2349A4), Color(0xff0634A1)])),
              //     padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height / 10,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                          'assets/svg/arrow-back.svg',
                          color: const Color(0xffffffff),
                        )),
                    const Text(
                      'Unit Name',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, bottom: 13, top: 7, right: 25),
              //const EdgeInsets.all(25.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 17,
                  itemExtent: MediaQuery.of(context).size.height / 17,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: (){
                        Navigator.pop(context, "Unit Name");

                      },
                      shape: Border(bottom: BorderSide(color: Colors.grey)),
                      title: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "<Unit Name>",
                            ),
                          ],
                        ),
                      ),
                      subtitle: Container(),
                    );
                  }))),
    );
  }
}
