import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final funct;
  MyButton({this.icon, this.funct});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funct,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.white,
          child: Center(
            child: Icon(
              icon,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }
}
