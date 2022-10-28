import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  Headline(
      {Key? key,
      required this.category,
      required this.showAll,
      required this.color})
      : super(key: key);

  String category;
  String showAll;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
            ),
            child: Text(
              category,
              style: TextStyle(
                fontSize: 32,
                // backgroundColor: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
