import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  final IconData icon;
  final String title;

  const ButtonMenu(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(right: 5),
        child: Column(children: <Widget>[
      ButtonTheme(
        minWidth: MediaQuery.of(context).size.width * 0.15,
        height: 60,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Color.fromRGBO(238, 238, 238, 1)),
              borderRadius: new BorderRadius.circular(15.0)),
          onPressed: () => {},
          elevation: 0,
          color: Colors.white,
          child: new Container(
            alignment: Alignment.centerLeft,
            child: new Row(
              children: <Widget>[
                new Container(
                  width: 33,
                  height: 33,
                  child: Icon(
                    icon,
                    color: Color.fromRGBO(28, 151, 195, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      new SizedBox(height: 5),
      new Text(title)
    ]));
  }
}
