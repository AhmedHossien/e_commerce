import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Product({
    this.id,
    this.name,
    this.title,
    this.image,
    this.price,
    this.function,
  });

  final int id;
  final String name, title, image;
  final double price;
  final Function function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.height * 0.0125),
      height: size.height * 0.45,
      width: size.height * 0.25,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.height * 0.010)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size.height * 0.010),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            flex: 3,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.height * 0.003),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: size.height * 0.020,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.grey.shade700),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      '\$' + '$price',
                      style: TextStyle(
                          fontSize: size.height * 0.020,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade500),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
