import 'package:flutter/material.dart';

class BigCard extends StatefulWidget {
  String numb2;
 final numb;
  IconData icono;

  BigCard({ this.numb, this.numb2, this.icono});

  @override
  _BigCardState createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  int  nume= 20;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height / 100;
    double width = size.width / 100;
    double hxw = height * width;
    var numb;
    return Padding(
      padding: EdgeInsets.only(left: width *2, right: width, top: height * 5),
      child: Card(
        color: Colors.white,
        shadowColor: Colors.white,
        elevation: 6,
        child: Container(
          width: width * 45,
          height: height * 45,
          padding: EdgeInsets.symmetric(
              vertical: height * 5, horizontal: width * 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

                 Row(
                  children: [
                    FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {

                       setState(() {
                         nume++;
                       });
                      },
                      child: Text(
                        "Sumar 1",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              Row(
                children: [
                  Text(
                    widget.numb.toString(),
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: TextStyle(
                      fontSize: hxw * 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      setState(() {
                        nume--;
                      });
                    },
                    child: Text(
                      "Restar 1",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
              Icon(
                // Icons.graphic_eq,
                widget.icono,
                color: Colors.blue,
                size: hxw * 1.2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
