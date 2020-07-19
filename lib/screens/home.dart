import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget dictionary() {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: 50,
            child: Icon(
              Icons.menu,
              size: 50,
              color: Colors.white,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            child: Text(
              "DICTIONARY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget medical() {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 40.0),
          alignment: Alignment.center,
          height: 120,
          //decoration: BoxDecoration(border: Border.all()),
          child: Text(
            "MEDICAL TERMINOLOGY",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          //decoration: BoxDecoration(border: Border.all()),
          margin: const EdgeInsets.only(left: 40.0, right: 40.0),
          height: 150,
          child: Text(
            "รายงานนี้เป็นส่วนหนึ่งของรายวิชา 806-415 ฝึกงาน คณะวิเทศศึกษา สาขาวิชาไทยศึกษา มหาวิทยาลัยสงขลานครินทร์ วิทยาเขตภูเก็ต ภาคเรียนที่ 3ปีการศึกษา 2562",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 91, 100, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: dictionary(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: medical(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
