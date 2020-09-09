import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmallCard extends StatefulWidget {
  final String text1;
  final String text2;

  SmallCard({this.text1, this.text2});
  @override
  _SmallCardState createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  double valueSlider = 0;
  bool valueCheckboox = true;
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
        color: valueCheckboox
            ? Colors.white
            : Colors.white60,
        elevation: 6,
        child: Container(
          width: width * 45,
          height: height * 30,
          padding:
              EdgeInsets.symmetric(vertical: height * 5, horizontal: width * 5),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: valueCheckboox,
                    onChanged: (bool isCheck) {
                      setState(() {
                        print(isCheck);
                        valueCheckboox = isCheck;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    valueSlider.toString(),
                    style: TextStyle(
                      fontSize: hxw * .5,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Slider(
                value: valueSlider,
                divisions: 10,
                label: valueSlider.toString(),
                min: 0,
                max: 10,
                onChanged: (double newValue) {
                  setState(() {
                    print(newValue.round());
                    valueSlider = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
