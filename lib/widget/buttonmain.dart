import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  final String title;
  final List<Color> color ;

  const ButtonMain(this.title, this.color);


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => {},
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      child: Container(
        width: MediaQuery.of(context).size.width*0.27,
        height: 61,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: new LinearGradient(
              colors: color
            ),
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
