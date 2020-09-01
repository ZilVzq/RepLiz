import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  String numb, numb2;
  IconData icono;

  BigCard({this.numb, this.numb2, this.icono});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height / 100;
    double width = size.width / 100;
    double hxw = height * width;
    return Padding(
      padding: EdgeInsets.only(left: width *2, right: width, top: height * 5),
      child: Card(
        color: Colors.redAccent,
        shadowColor: Colors.white,
        elevation: 6,
        child: Container(
          width: width * 45,
          height: height * 45,
          padding: EdgeInsets.symmetric(
              vertical: height * 10, horizontal: width * 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

                 Row(
                  children: [
                    Text(
                      "Conversion",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: hxw * .4,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              Row(
                children: [
                  Text(
                    numb,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: TextStyle(
                      fontSize: hxw * .6,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    numb2,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: TextStyle(
                      fontSize: hxw * .3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Icon(
                // Icons.graphic_eq,
                icono,
                color: Colors.white,
                size: hxw * 1.2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
