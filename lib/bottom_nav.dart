import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.075,
      color: Colors.grey.shade300,
      child: Row(
        children: <Widget>[
          Expanded(
              child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Text(
                'Explore',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.height * 0.020, fontWeight: FontWeight.bold),
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Icon(
                Icons.shopping_cart_outlined,
                size: size.height * 0.04,
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Icon(
                Icons.person,
                size: size.height * 0.04,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
