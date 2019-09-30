import 'package:flutter/material.dart';
import 'package:myapps/widget/buttonmain.dart';
import 'package:myapps/widget/cardmenu.dart';
import 'package:myapps/widget/cardschedule.dart';
import 'package:myapps/widget/navigation.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.chat,
                      color: Color.fromRGBO(85, 85, 85, 1),
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 14,top:7),
                    child: Icon(
                      Icons.fiber_manual_record,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                ],
              )
            ],
            title: Image.asset(
              'images/jitu.png',
              fit: BoxFit.cover,
              height: 30,
            )),
        body: new ListView(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(
                          1, 1), // 10% of the width, so there are ten blinds.
                      colors: [
                        const Color.fromRGBO(146, 220, 247, 1),
                        const Color.fromRGBO(42, 222, 193, 1),
                        const Color.fromRGBO(0, 223, 171, 1),
                      ], // whitish to gray
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(6.0, 12.0),
                          blurRadius: 15.0)
                    ],
                  ),
                ),
                CardMenu("Rinjani Argata Hermayani", "Manajer Marketing")
              ],
            ),
            new SizedBox(height: 5),
            new Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonMain("Sales", [
                    Color.fromRGBO(28, 151, 195, 1),
                    Color.fromRGBO(22, 202, 190, 1)
                  ]),
                  ButtonMain("Collection", [
                    Color.fromRGBO(67, 181, 217, 1),
                    Color.fromRGBO(112, 167, 191, 1),
                    Color.fromRGBO(240, 94, 138, 1)
                  ]),
                  ButtonMain("CRM", [
                    Color.fromRGBO(242, 105, 92, 1),
                    Color.fromRGBO(246, 158, 52, 1),
                    Color.fromRGBO(249, 190, 28, 1)
                  ]),
                ],
              ),
            ),
            new SizedBox(height: 20),
            new Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: <Widget>[
                  Icon(Icons.date_range,
                      size: 25, color: Color.fromRGBO(85, 85, 85, 1)),
                  new SizedBox(width: 10),
                  Text("Schedule",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(85, 85, 85, 1),
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            new SizedBox(height: 10),
            CardSchedule(
                "Penawaran",
                "PT. Sinar Mulia",
                "Jl. Manukan Indah blok 3A - n...",
                "27/08/2019",
                "08:00 - 12:00",
                Colors.red),
            CardSchedule(
                "Follow Up",
                "PT. Gudang Rejeki",
                "Jl. Basuki Rahmat Gg.5",
                "28/08/2019",
                "10:00 - 12:00",
                Color.fromRGBO(252, 170, 32, 1)),
            CardSchedule(
                "Penagihan",
                "PT. Nusantara Food",
                "Jl. Ngaggel Mulya no. 04",
                "29/08/2019",
                "13:00 - 15:00",
                Color.fromRGBO(32, 252, 149, 1)),
          ],
        ),
        bottomNavigationBar: Navigation());
  }
}
