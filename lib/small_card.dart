import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmallCard extends StatelessWidget {
  String tex1, tex2;

  SmallCard({this.tex1, this.tex2});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height / 100;
    double width = size.width / 100;
    double hxw = height * width;
    return Padding(
      padding: EdgeInsets.only(left: width, right: width, top: height * 5),
      child: Card(
        shadowColor: Colors.white,
        elevation: 6,
        child: Container(
          width: width * 45,
          height: height * 30,
          padding: EdgeInsets.symmetric(
              vertical: height * 10, horizontal: width * 5),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    tex1,
                    textScaleFactor: 2,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                     // fontSize: 17,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    tex2,
                    style: TextStyle(
                      fontSize: hxw * .5,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
