import 'package:bubble_trouble/my_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double player = 0;

  void moveLeft() {
    setState(() {
      if (player - 0.1 < -1) {
      } else {
        player -= 0.1;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (player + 0.1 > 1) {
      } else {
        player += 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.pink,
            child: Center(
                child: Stack(children: [
              Container(
                alignment: Alignment(player, 1),
                child: Container(width: 50, height: 50, color: Colors.purple),
              )
            ])),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  icon: Icons.arrow_circle_left_outlined,
                  funct: moveLeft,
                ),
                MyButton(
                  icon: Icons.arrow_circle_up_outlined,
                ),
                MyButton(
                  icon: Icons.arrow_circle_right_outlined,
                  funct: moveRight,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
