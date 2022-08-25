import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class jadwalPage extends StatefulWidget {
  const jadwalPage({Key? key}) : super(key: key);

  @override
  State<jadwalPage> createState() => _jadwalPageState();
}

class _jadwalPageState extends State<jadwalPage> {
  @override
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: 500,
              height: 800,
              color: Colors.white,
            ),
            Image.asset('assets/images/Union_black.png'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              margin: EdgeInsets.only(top: 10),
              width: 400,
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text(
                    'Jadwal Pemberian',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Pakan',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 240),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 315,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(26)),
                    child: Center(
                      child: SwitchListTile(
                        title: Text(
                          '07:00 Pakan Pagi',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500),
                        ),
                        activeColor: Colors.amber,
                        activeTrackColor: Colors.black,
                        value: isSwitched1,
                        onChanged: (value) {
                          setState(() {
                            isSwitched1 = value;
                          });
                        },
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    width: 10,
                    thickness: 3,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Container(
                    width: 315,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(26)),
                    child: Center(
                      child: SwitchListTile(
                        title: Text(
                          '13:00 Pakan Siang',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500),
                        ),
                        activeColor: Colors.amber,
                        activeTrackColor: Colors.black,
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                          });
                        },
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    width: 10,
                    thickness: 3,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Container(
                    width: 315,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(26)),
                    child: Center(
                      child: SwitchListTile(
                        title: Text(
                          '16:00 Pakan Sore',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500),
                        ),
                        activeColor: Colors.amber,
                        activeTrackColor: Colors.black,
                        value: isSwitched3,
                        onChanged: (value) {
                          setState(() {
                            isSwitched3 = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
