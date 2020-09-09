import 'package:flutter/material.dart';

import 'big_card.dart';
import 'small_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height = size.height/100;
    double width = size.width/100;

    return Container(

      color: Colors.black,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallCard(text1: "Marketing", text2: "123.4M"),
                BigCard(
                    numb: 432,
                    numb2: "+12.3% of target",
                    icono: Icons.trending_up),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                BigCard(
                  numb: 537,
                  numb2: "+22% of target",
                  icono: Icons.graphic_eq,
                ),
                SmallCard(text1: "Sales", text2: "345.8M"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
