import 'package:flutter/material.dart';

class Gat extends StatelessWidget {
  const Gat(
      {Key key,
      @required this.size,
      @required this.cat,
      @required this.iconData,
      @required this.function})
      : super(key: key);
  final Size size;
  final String cat;
  final IconData iconData;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: size.height * 0.05,
            backgroundColor: Colors.grey.shade200,
            child: Icon(
              iconData,
              color: Colors.black,
              size: size.height * 0.05,
            ),
          ),
          Center(
              child: Text(
            cat,
            style: TextStyle(
                fontSize: size.height * 0.020, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
