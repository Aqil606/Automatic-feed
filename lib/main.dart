import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'pages/page_jadwal.dart';
import 'pages/page_laporan.dart';
// import 'provider/realtime_db.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // FirebaseApp firebaseApp = await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late String _displayText;
  // final _database = FirebaseDatabase.instance.ref();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _activateListener();
  // }

  // void _activateListener() {
  //   _database.child('Data_tampungan/isi_tampungan').onValue.listen((event) {
  //     final description = event.snapshot.value;
  //     print(description);
  //     setState(() {
  //       _displayText = '$description';
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 30,
              ),
              height: 700,
              width: 500,
              color: Color(0xff000119),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Automatic',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Mulish",
                    ),
                  ),
                  Text(
                    'Chicken Farm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Mulish",
                    ),
                  ),
                  Text(
                    'Manage your feeding storage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: "Mulish",
                    ),
                  ),
                  Text(
                    'and schedule',
                    style: TextStyle(
                      color: Color(0xffFFD032),
                      fontSize: 13,
                      fontFamily: "Mulish",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 250,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Unused Storage',
                      style: TextStyle(
                        color: Color(0xffFFD032),
                        fontSize: 16,
                        fontFamily: "Mulish",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/Union_Side.svg',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Used Storage',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Mulish",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/Union.png',
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(15),
                width: 250,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xff950101),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your storage',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: "Mulish",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                            icon: Icon(Icons.file_copy),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const laporanPage(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    //Circular Chart
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 25),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xffFFD032),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                '70%',
                                style: TextStyle(
                                  color: Color(0xffCE1212),
                                  fontFamily: "Mulish",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'USED',
                                style: TextStyle(
                                  color: Color(0xffCE1212),
                                  fontFamily: "Mulish",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Ellipse224.svg',
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2,
                          ),
                        ),
                        Text(
                          'Used',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Mulish",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/Ellipse224.svg',
                          color: Color(0xffFFD032),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2,
                          ),
                        ),
                        Text(
                          'Unused',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFD032),
                            fontSize: 13,
                            fontFamily: "Mulish",
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff000119),
                            borderRadius: BorderRadius.circular(26),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const jadwalPage(),
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                'Schedule',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
