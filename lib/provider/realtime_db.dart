import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class realtime_db extends StatefulWidget {
  const realtime_db({Key? key}) : super(key: key);

  @override
  State<realtime_db> createState() => _realtime_dbState();
}

class _realtime_dbState extends State<realtime_db> {
  late DatabaseReference _dbref;
  String databasejson = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbref = FirebaseDatabase.instance.reference();
  }

  _readdb_waktu() {}
  _updatedb_waktu() {}
  _readdb_tampungan() {
    _dbref
        .child('Data_tampungan')
        .child('isi_tampungan')
        .once()
        .then((DatabaseEvent databaseEvent) {
      print('read once - ' + databaseEvent.snapshot.value.toString());
    });
  }

  _readdb_wadah() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container();
  // }
}
