import 'package:flutter/material.dart';

class CardSchedule extends StatelessWidget {
  final String task;
  final String company;
  final String address;
  final String date;
  final String time;
  final Color color;

  const CardSchedule(this.task, this.company,this.address,this.date,this.time,this.color);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(left:20,right: 20,top: 10,bottom: 5),
      child: new Column(
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(6.0, 12.0),
                    blurRadius: 15.0)
              ],
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Container(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              task,
                              style: TextStyle(
                                  color: Color.fromRGBO(85, 85, 85, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              company,
                              style: TextStyle(
                                  color: Color.fromRGBO(85, 85, 85, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              address,
                              style: TextStyle(
                                  color: Color.fromRGBO(85, 85, 85, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        new Container(
                            padding: EdgeInsets.only(right: 0),
                            alignment: Alignment.topRight,
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                   date,
                                    style: TextStyle(
                                        color: Color.fromRGBO(85, 85, 85, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      Icon(Icons.alarm, size: 15),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        time,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(85, 85, 85, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                        color: Color.fromRGBO(85, 85, 85, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]))
                      ],
                    ),
                  ),
                ),
                new Container(
                  width: 26,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(6.0, 12.0),
                          blurRadius: 15.0)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
