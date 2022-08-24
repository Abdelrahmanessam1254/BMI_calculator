import 'package:flutter/material.dart';

class ResusableCard extends StatelessWidget {
  Color colour;
  Widget cardChild;
  final Function onPress;

  ResusableCard({Key key, @required this.colour, this.cardChild, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
