import 'package:flutter/material.dart';
import 'package:myapps/widget/buttonmenu.dart';

class CardMenu extends StatelessWidget {
  final String name;
  final String department;

  const CardMenu(this.name, this.department);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(20),
      alignment: Alignment.topLeft,
      width: MediaQuery.of(context).size.width,
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
      padding: EdgeInsets.all(20),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                alignment: Alignment.topLeft,
                child: new ClipRRect(
                  borderRadius: new BorderRadius.circular(8.0),
                  child: new Image.network(
                    "https://scontent-sin2-2.cdninstagram.com/vp/254f0c1e93dacc7dce1bca638153ee5a/5E2CD40D/t51.2885-15/sh0.08/e35/p640x640/52417473_286755015336005_6222635558511099583_n.jpg?_nc_ht=scontent-sin2-2.cdninstagram.com&_nc_cat=105%20640w,https://scontent-sin2-2.cdninstagram.com/vp/601bb53d480ed04782cabf43df5522a7/5E18EB0D/t51.2885-15/sh0.08/e35/p750x750/52417473_286755015336005_6222635558511099583_n.jpg?_nc_ht=scontent-sin2-2.cdninstagram.com&_nc_cat=105%20750w,https://scontent-sin2-2.cdninstagram.com/vp/5162363d6fabab19ae341a2f2eb66f7d/5E2E6EFB/t51.2885-15/e35/52417473_286755015336005_6222635558511099583_n.jpg?_nc_ht=scontent-sin2-2.cdninstagram.com&_nc_cat=105%201080w",
                    height: 100,
                    width: 83,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              new Flexible(
                  child: new Container(
                padding: EdgeInsets.only(left: 15),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[800],
                            fontFamily: 'Asap',
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 6),
                    new Text(
                      'Manajer Marketing',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                          fontFamily: 'Asap',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 7),
                    new Container(
                      width: 110,
                      child: ButtonTheme(
                        height: 43,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () => {},
                          color: Color.fromRGBO(80, 174, 207, 1),
                          padding: EdgeInsets.only(left: 10, right: 5),
                          child: new Container(
                            alignment: Alignment.centerLeft,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: new RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Absen',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                new Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(28, 151, 195, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
          new SizedBox(height: 20),
          new Expanded(
              flex: 0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonMenu(Icons.date_range, "Absensi"),
                  ButtonMenu(Icons.compare_arrows, "Shift"),
                  ButtonMenu(Icons.attach_money, "Reimbuse"),
                  ButtonMenu(Icons.assignment_ind, "Cuti"),
                ],
              )),
        ],
      ),
    );
  }
}
