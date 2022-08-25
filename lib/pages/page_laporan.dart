import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class laporanPage extends StatelessWidget {
  const laporanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: 400,
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
                    'Laporan',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Harian',
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Icon(
                            Icons.folder,
                            size: 50,
                            color: Color(0xffFFD032),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.transparent,
                          width: 20,
                          thickness: 3,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wadah 1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Status : Terisi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Icon(
                            Icons.folder,
                            size: 50,
                            color: Color(0xffFFD032),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.transparent,
                          width: 20,
                          thickness: 3,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wadah 2',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Status : Terisi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Icon(
                            Icons.folder,
                            size: 50,
                            color: Color(0xffFFD032),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.transparent,
                          width: 20,
                          thickness: 3,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wadah 3',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Status : Terisi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
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
