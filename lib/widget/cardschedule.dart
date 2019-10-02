import 'package:flutter/material.dart';

class CardSchedule extends StatelessWidget {
  final String task;
  final String company;
  final String address;
  final String date;
  final String time;
  final Color color;

  const CardSchedule(
      this.task, this.company, this.address, this.date, this.time, this.color);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
      child: new Column(
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 93,
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
                        new Expanded(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: task,
                                      style: TextStyle(
                                          color: Color.fromRGBO(85, 85, 85, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              new RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: company,
                                      style: TextStyle(
                                          color: Color.fromRGBO(85, 85, 85, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              new RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: address,
                                      style: TextStyle(
                                          color: Color.fromRGBO(85, 85, 85, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                width: 0,
                                alignment: Alignment.topRight,
                                child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new RichText(
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: date,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      85, 85, 85, 1),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      new RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child:
                                                  Icon(Icons.alarm, size: 15),
                                            ),
                                            TextSpan(
                                              text: time,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      85, 85, 85, 1),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      new RichText(
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      85, 85, 85, 1),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])))
                      ],
                    ),
                  ),
                ),
                new Container(
                  width: 26,
                  child: Container(
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
